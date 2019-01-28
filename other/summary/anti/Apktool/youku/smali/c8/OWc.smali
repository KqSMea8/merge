.class public final Lc8/OWc;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseproject/utils/Util$ENCRYPT_TYPE;
    }
.end annotation


# static fields
.field public static final CHINESE:I = 0x0

.field public static final EXCEPTION:I = -0x1

.field private static final LINE_SEPARATOR:Ljava/lang/String;

.field public static final MIX:I = 0x3

.field public static final NUMBER_CHARACTER:I = 0x2

.field public static final NUMBER_OR_CHARACTER:I = 0x1

.field public static SECRET:Ljava/lang/String;

.field public static TIME_STAMP:Ljava/lang/Long;

.field static hexDigits:[C

.field private static scale:Ljava/lang/Float;

.field private static scaledDensity:Ljava/lang/Float;


# instance fields
.field private previousToastString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    const-string/jumbo v0, "line.separator"

    .line 177
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/OWc;->LINE_SEPARATOR:Ljava/lang/String;

    .line 452
    sput-object v1, Lc8/OWc;->scale:Ljava/lang/Float;

    .line 454
    sput-object v1, Lc8/OWc;->scaledDensity:Ljava/lang/Float;

    .line 995
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lc8/OWc;->hexDigits:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OWc;->previousToastString:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static URLEncoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 117
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    const-string/jumbo p0, ""

    .line 126
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 120
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    const-string/jumbo p0, ""

    goto :goto_0

    .line 124
    :catch_1
    move-exception v0

    const-string/jumbo p0, ""

    goto :goto_0
.end method

.method public static computeSignature(Ljava/lang/String;)I
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1087
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1088
    .local v0, "i":I
    const/4 v1, 0x0

    .line 1089
    .local v1, "k":I
    const/4 v3, 0x0

    .local v3, "l":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_0

    .line 1090
    mul-int/lit8 v4, v0, 0x2b

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .local v2, "k":I
    aget-char v5, v5, v1

    add-int v0, v4, v5

    .line 1089
    add-int/lit8 v3, v3, 0x1

    move v1, v2

    .end local v2    # "k":I
    .restart local v1    # "k":I
    goto :goto_0

    .line 1092
    :cond_0
    return v0
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 186
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 187
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    sget-object v4, Lc8/OWc;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 194
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "Util"

    invoke-static {v4, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 198
    .restart local v1    # "line":Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 199
    :catch_1
    move-exception v0

    .line 200
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Util"

    invoke-static {v4, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 199
    .end local v1    # "line":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 200
    const-string/jumbo v4, "Util"

    invoke-static {v4, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 198
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 201
    :goto_2
    throw v4

    .line 199
    :catch_3
    move-exception v0

    .line 200
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Util"

    invoke-static {v5, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 207
    if-nez p0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v2

    .line 209
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 211
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0

    .line 212
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 213
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 214
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_3

    .line 215
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 216
    aget-object v3, v0, v1

    invoke-static {v3}, Lc8/OWc;->deleteFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 222
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0
.end method

.method public static dip2px(F)I
    .locals 2
    .param p0, "dipValue"    # F

    .prologue
    .line 458
    :try_start_0
    sget-object v0, Lc8/OWc;->scale:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 459
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lc8/OWc;->scale:Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :cond_0
    sget-object v0, Lc8/OWc;->scale:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0

    .line 462
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNetworkType()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 265
    sget-object v3, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v4, "connectivity"

    .line 266
    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 267
    .local v1, "m":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 268
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 270
    const/16 v2, 0x3e8

    .line 306
    :goto_0
    :pswitch_0
    return v2

    .line 271
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_1

    .line 272
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 306
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 274
    :pswitch_1
    const/4 v2, 0x7

    goto :goto_0

    .line 276
    :pswitch_2
    const/4 v2, 0x4

    goto :goto_0

    .line 278
    :pswitch_3
    const/4 v2, 0x2

    goto :goto_0

    .line 280
    :pswitch_4
    const/16 v2, 0xe

    goto :goto_0

    .line 282
    :pswitch_5
    const/4 v2, 0x5

    goto :goto_0

    .line 284
    :pswitch_6
    const/4 v2, 0x6

    goto :goto_0

    .line 286
    :pswitch_7
    const/16 v2, 0xc

    goto :goto_0

    .line 290
    :pswitch_8
    const/16 v2, 0x8

    goto :goto_0

    .line 292
    :pswitch_9
    const/16 v2, 0xa

    goto :goto_0

    .line 294
    :pswitch_a
    const/16 v2, 0xf

    goto :goto_0

    .line 296
    :pswitch_b
    const/16 v2, 0x9

    goto :goto_0

    .line 298
    :pswitch_c
    const/16 v2, 0xb

    goto :goto_0

    .line 300
    :pswitch_d
    const/16 v2, 0xd

    goto :goto_0

    .line 302
    :pswitch_e
    const/4 v2, 0x3

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_e
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_c
        :pswitch_7
        :pswitch_d
        :pswitch_4
        :pswitch_a
    .end packed-switch
.end method

.method public static getTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 888
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 890
    .local v1, "sDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 891
    .local v0, "date":Ljava/lang/String;
    const-string/jumbo v2, "-"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 892
    const-string/jumbo v2, "-"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 893
    const-string/jumbo v2, ":"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 894
    const-string/jumbo v2, ":"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 895
    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 896
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 897
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 898
    return-object v0
.end method

.method public static hasInternet()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 233
    sget-object v4, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v5, "connectivity"

    .line 234
    invoke-virtual {v4, v5}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 235
    .local v2, "m":Landroid/net/ConnectivityManager;
    if-nez v2, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v3

    .line 239
    :cond_1
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 240
    .local v1, "info":[Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 241
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 242
    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    .line 244
    const/4 v3, 0x1

    goto :goto_0

    .line 241
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static hasSDCard()Z
    .locals 2

    .prologue
    .line 359
    const-string/jumbo v0, "mounted"

    .line 360
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    const/4 v0, 0x1

    .line 362
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTimeStampValid()Z
    .locals 1

    .prologue
    .line 992
    sget-object v0, Lc8/OWc;->TIME_STAMP:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isWifi()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 256
    sget-object v3, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 257
    .local v0, "m":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 258
    .local v1, "n":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static join([I)Ljava/lang/String;
    .locals 7
    .param p0, "numbers"    # [I

    .prologue
    .line 396
    const-string/jumbo v2, ""

    .line 397
    .local v2, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .line 398
    .local v0, "i":I
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, p0, v3

    .line 399
    .local v1, "num":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 400
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    if-eq v0, v5, :cond_0

    .line 401
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 398
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 404
    .end local v1    # "num":I
    :cond_1
    return-object v2
.end method

.method public static join([J)Ljava/lang/String;
    .locals 8
    .param p0, "numbers"    # [J

    .prologue
    .line 411
    const-string/jumbo v1, ""

    .line 412
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .line 413
    .local v0, "i":I
    array-length v5, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-wide v2, p0, v4

    .line 414
    .local v2, "num":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 415
    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    if-eq v0, v6, :cond_0

    .line 416
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 413
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 419
    .end local v2    # "num":J
    :cond_1
    return-object v1
.end method

.method public static varargs join([Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 379
    if-nez p0, :cond_0

    .line 380
    const/4 v3, 0x0

    .line 389
    :goto_0
    return-object v3

    .line 381
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 382
    .local v2, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 383
    .local v0, "i":I
    array-length v4, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, p0, v3

    .line 384
    .local v1, "obj":Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    if-eq v0, v5, :cond_1

    .line 386
    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 383
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 389
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 143
    :try_start_0
    const-string/jumbo v6, "MD5"

    .line 144
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 145
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 146
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 148
    .local v5, "messageDigest":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    .local v3, "hexString":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 150
    aget-byte v6, v5, v4

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "h":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 153
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 155
    .end local v2    # "h":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 158
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "hexString":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    .end local v5    # "messageDigest":[B
    :goto_2
    return-object v6

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "Util.md5()"

    invoke-static {v6, v1}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    const-string/jumbo v6, ""

    goto :goto_2
.end method

.method public static px2dip(F)I
    .locals 2
    .param p0, "pxValue"    # F

    .prologue
    .line 469
    :try_start_0
    sget-object v0, Lc8/OWc;->scale:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 470
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lc8/OWc;->scale:Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :cond_0
    sget-object v0, Lc8/OWc;->scale:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v0, p0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0

    .line 473
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
