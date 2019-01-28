.class public Lc8/cD;
.super Ljava/lang/Object;
.source "WVUCUtils.java"


# static fields
.field public static final CONFIG_KEY:Ljava/lang/String; = "ISX86"

.field public static final TAG:Ljava/lang/String; = "WVUCUtils"

.field public static final VAL_ARM:J = 0x2L

.field public static final VAL_DEAFAULT:J = 0x0L

.field public static final VAL_X86:J = 0x1L

.field private static sAbi:Ljava/lang/String;

.field private static sAbi2:Ljava/lang/String;

.field private static sAbiList:[Ljava/lang/String;

.field private static sArch:Ljava/lang/String;

.field private static sCpuAbi:Ljava/lang/String;

.field private static sSupportedABIs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 144
    if-eqz p0, :cond_0

    .line 146
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getFromSystemProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v7, Ljava/io/File;

    const-string/jumbo v11, "/system/build.prop"

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v7, "propFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 113
    .local v5, "propFIS":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 114
    .local v8, "propISR":Ljava/io/InputStreamReader;
    const/4 v3, 0x0

    .line 116
    .local v3, "propBR":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v5    # "propFIS":Ljava/io/FileInputStream;
    .local v6, "propFIS":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    .end local v8    # "propISR":Ljava/io/InputStreamReader;
    .local v9, "propISR":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 121
    .end local v3    # "propBR":Ljava/io/BufferedReader;
    .local v4, "propBR":Ljava/io/BufferedReader;
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 122
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 125
    const-string/jumbo v11, "="

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "cols":[Ljava/lang/String;
    array-length v11, v0

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 127
    const/4 v11, 0x0

    aget-object v11, v0, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 128
    .local v10, "trimKeyCol":Ljava/lang/String;
    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 129
    const/4 v11, 0x1

    aget-object v11, v0, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v11

    .line 136
    invoke-static {v4}, Lc8/cD;->close(Ljava/io/Closeable;)V

    .line 137
    invoke-static {v9}, Lc8/cD;->close(Ljava/io/Closeable;)V

    .line 138
    invoke-static {v6}, Lc8/cD;->close(Ljava/io/Closeable;)V

    move-object v3, v4

    .end local v4    # "propBR":Ljava/io/BufferedReader;
    .restart local v3    # "propBR":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "propISR":Ljava/io/InputStreamReader;
    .restart local v8    # "propISR":Ljava/io/InputStreamReader;
    move-object v5, v6

    .line 140
    .end local v0    # "cols":[Ljava/lang/String;
    .end local v2    # "line":Ljava/lang/String;
    .end local v6    # "propFIS":Ljava/io/FileInputStream;
    .end local v10    # "trimKeyCol":Ljava/lang/String;
    .restart local v5    # "propFIS":Ljava/io/FileInputStream;
    :goto_0
    return-object v11

    .line 136
    .end local v3    # "propBR":Ljava/io/BufferedReader;
    .end local v5    # "propFIS":Ljava/io/FileInputStream;
    .end local v8    # "propISR":Ljava/io/InputStreamReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "propBR":Ljava/io/BufferedReader;
    .restart local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v9    # "propISR":Ljava/io/InputStreamReader;
    :cond_1
    invoke-static {v4}, Lc8/cD;->close(Ljava/io/Closeable;)V

    .line 137
    invoke-static {v9}, Lc8/cD;->close(Ljava/io/Closeable;)V

    .line 138
    invoke-static {v6}, Lc8/cD;->close(Ljava/io/Closeable;)V

    move-object v3, v4

    .end local v4    # "propBR":Ljava/io/BufferedReader;
    .restart local v3    # "propBR":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "propISR":Ljava/io/InputStreamReader;
    .restart local v8    # "propISR":Ljava/io/InputStreamReader;
    move-object v5, v6

    .line 140
    .end local v2    # "line":Ljava/lang/String;
    .end local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v5    # "propFIS":Ljava/io/FileInputStream;
    :goto_1
    const/4 v11, 0x0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    invoke-static {v3}, Lc8/cD;->close(Ljava/io/Closeable;)V

    .line 137
    invoke-static {v8}, Lc8/cD;->close(Ljava/io/Closeable;)V

    .line 138
    invoke-static {v5}, Lc8/cD;->close(Ljava/io/Closeable;)V

    goto :goto_1

    .line 136
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    :goto_3
    invoke-static {v3}, Lc8/cD;->close(Ljava/io/Closeable;)V

    .line 137
    invoke-static {v8}, Lc8/cD;->close(Ljava/io/Closeable;)V

    .line 138
    invoke-static {v5}, Lc8/cD;->close(Ljava/io/Closeable;)V

    throw v11

    .line 136
    .end local v5    # "propFIS":Ljava/io/FileInputStream;
    .restart local v6    # "propFIS":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v5    # "propFIS":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v5    # "propFIS":Ljava/io/FileInputStream;
    .end local v8    # "propISR":Ljava/io/InputStreamReader;
    .restart local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v9    # "propISR":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v11

    move-object v8, v9

    .end local v9    # "propISR":Ljava/io/InputStreamReader;
    .restart local v8    # "propISR":Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v5    # "propFIS":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3    # "propBR":Ljava/io/BufferedReader;
    .end local v5    # "propFIS":Ljava/io/FileInputStream;
    .end local v8    # "propISR":Ljava/io/InputStreamReader;
    .restart local v4    # "propBR":Ljava/io/BufferedReader;
    .restart local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v9    # "propISR":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v11

    move-object v3, v4

    .end local v4    # "propBR":Ljava/io/BufferedReader;
    .restart local v3    # "propBR":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "propISR":Ljava/io/InputStreamReader;
    .restart local v8    # "propISR":Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v5    # "propFIS":Ljava/io/FileInputStream;
    goto :goto_3

    .line 133
    .end local v5    # "propFIS":Ljava/io/FileInputStream;
    .restart local v6    # "propFIS":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    move-object v5, v6

    .end local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v5    # "propFIS":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v5    # "propFIS":Ljava/io/FileInputStream;
    .end local v8    # "propISR":Ljava/io/InputStreamReader;
    .restart local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v9    # "propISR":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v1

    move-object v8, v9

    .end local v9    # "propISR":Ljava/io/InputStreamReader;
    .restart local v8    # "propISR":Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v5    # "propFIS":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v3    # "propBR":Ljava/io/BufferedReader;
    .end local v5    # "propFIS":Ljava/io/FileInputStream;
    .end local v8    # "propISR":Ljava/io/InputStreamReader;
    .restart local v4    # "propBR":Ljava/io/BufferedReader;
    .restart local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v9    # "propISR":Ljava/io/InputStreamReader;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4    # "propBR":Ljava/io/BufferedReader;
    .restart local v3    # "propBR":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "propISR":Ljava/io/InputStreamReader;
    .restart local v8    # "propISR":Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v5    # "propFIS":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static isArchContains(Ljava/lang/String;)Z
    .locals 12
    .param p0, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 37
    const-string/jumbo v3, "WVUCUtils"

    const-string/jumbo v8, "ISX86"

    const-wide/16 v10, 0x0

    invoke-static {v3, v8, v10, v11}, Lc8/MH;->getLongVal(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    .line 38
    .local v4, "val":J
    const-wide/16 v8, 0x2

    cmp-long v3, v4, v8

    if-nez v3, :cond_0

    move v3, v6

    .line 107
    :goto_0
    return v3

    .line 40
    :cond_0
    const-wide/16 v8, 0x1

    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    move v3, v7

    .line 41
    goto :goto_0

    .line 44
    :cond_1
    sget-object v3, Lc8/cD;->sArch:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 45
    const-string/jumbo v3, "os.arch"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lc8/cD;->sArch:Ljava/lang/String;

    .line 47
    :cond_2
    sget-object v3, Lc8/cD;->sArch:Ljava/lang/String;

    if-eqz v3, :cond_3

    sget-object v3, Lc8/cD;->sArch:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v7

    .line 48
    goto :goto_0

    .line 52
    :cond_3
    sget-object v3, Lc8/cD;->sAbi:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 54
    :try_start_0
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sput-object v3, Lc8/cD;->sAbi:Ljava/lang/String;

    .line 55
    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    sput-object v3, Lc8/cD;->sAbi2:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_4
    :goto_1
    sget-object v3, Lc8/cD;->sAbi:Ljava/lang/String;

    if-eqz v3, :cond_5

    sget-object v3, Lc8/cD;->sAbi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v7

    .line 61
    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 65
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    sget-object v3, Lc8/cD;->sSupportedABIs:[Ljava/lang/String;

    if-nez v3, :cond_6

    .line 66
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v3, v8, :cond_6

    .line 68
    :try_start_1
    const-class v3, Landroid/os/Build;

    const-string/jumbo v8, "SUPPORTED_ABIS"

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 69
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    sput-object v3, Lc8/cD;->sSupportedABIs:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_6
    :goto_2
    sget-object v3, Lc8/cD;->sSupportedABIs:[Ljava/lang/String;

    if-eqz v3, :cond_7

    sget-object v3, Lc8/cD;->sSupportedABIs:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_7

    sget-object v3, Lc8/cD;->sSupportedABIs:[Ljava/lang/String;

    aget-object v3, v3, v6

    if-eqz v3, :cond_7

    sget-object v3, Lc8/cD;->sSupportedABIs:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v7

    .line 79
    goto/16 :goto_0

    .line 70
    :catch_1
    move-exception v1

    .line 71
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 86
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    sget-object v3, Lc8/cD;->sCpuAbi:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 87
    const-string/jumbo v3, "ro.product.cpu.abi"

    invoke-static {v3}, Lc8/cD;->getFromSystemProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lc8/cD;->sCpuAbi:Ljava/lang/String;

    .line 89
    :cond_8
    sget-object v3, Lc8/cD;->sCpuAbi:Ljava/lang/String;

    if-eqz v3, :cond_9

    sget-object v3, Lc8/cD;->sCpuAbi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v7

    .line 90
    goto/16 :goto_0

    .line 94
    :cond_9
    sget-object v3, Lc8/cD;->sAbiList:[Ljava/lang/String;

    if-nez v3, :cond_a

    .line 95
    const-string/jumbo v3, "ro.product.cpu.abilist"

    invoke-static {v3}, Lc8/cD;->getFromSystemProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "abilist":Ljava/lang/String;
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    .line 97
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lc8/cD;->sAbiList:[Ljava/lang/String;

    .line 100
    .end local v0    # "abilist":Ljava/lang/String;
    :cond_a
    sget-object v3, Lc8/cD;->sAbiList:[Ljava/lang/String;

    if-eqz v3, :cond_b

    sget-object v3, Lc8/cD;->sAbiList:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_b

    sget-object v3, Lc8/cD;->sAbiList:[Ljava/lang/String;

    aget-object v3, v3, v6

    if-eqz v3, :cond_b

    sget-object v3, Lc8/cD;->sAbiList:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v7

    .line 104
    goto/16 :goto_0

    :cond_b
    move v3, v6

    .line 107
    goto/16 :goto_0
.end method
