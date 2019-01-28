.class public Lc8/rpf;
.super Ljava/lang/Object;
.source "AlibcFlowCustomsVisa.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/qpf;
    }
.end annotation


# static fields
.field public static final TIPS_VISA_ONLINE:Ljava/lang/String; = "8617ab96f88d12c0"

.field public static final TIPS_VISA_TEST:Ljava/lang/String; = "b9b3c5093a1971de"

.field public static final VISA_ERROR_INVALID:I = 0x4

.field public static final VISA_ERROR_IS_NULL:I = 0x3

.field public static final VISA_ERROR_NETWORK:I = 0x1

.field public static final VISA_ERROR_NONSUPPORT_APP:I = 0x5

.field public static final VISA_ERROR_NO_VISA:I = 0x6

.field public static final VISA_NAME:Ljava/lang/String; = "visa"

.field public static final VISA_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;Ljava/lang/String;Lcom/taobao/flowcustoms/visa/VisaInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/taobao/flowcustoms/visa/VisaInfo;

    .prologue
    .line 18
    invoke-static {p0, p1, p2}, Lc8/rpf;->checkVisa(Landroid/content/Intent;Ljava/lang/String;Lcom/taobao/flowcustoms/visa/VisaInfo;)I

    move-result v0

    return v0
.end method

.method private static checkVisa(Landroid/content/Intent;Ljava/lang/String;Lcom/taobao/flowcustoms/visa/VisaInfo;)I
    .locals 11
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "visaInfo"    # Lcom/taobao/flowcustoms/visa/VisaInfo;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 166
    if-nez p2, :cond_1

    .line 167
    const-string/jumbo v7, "AlibcVisa"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "visa check visainfo is null , firstIsForce is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lc8/wpf;->firstIsForce()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lc8/wpf;->firstIsForce()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x6

    .line 206
    :cond_0
    :goto_0
    return v6

    .line 171
    :cond_1
    invoke-virtual {p2}, Lcom/taobao/flowcustoms/visa/VisaInfo;->visaIsExpire()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 172
    const-string/jumbo v6, "AlibcVisa"

    const-string/jumbo v7, "visa check visainfo IsExpire"

    invoke-static {v6, v7}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v6, 0x4

    goto :goto_0

    .line 177
    :cond_2
    sget-object v8, Lc8/unf;->instance:Lc8/unf;

    iget-object v8, v8, Lc8/unf;->application:Landroid/app/Application;

    invoke-virtual {v8}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 178
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/high16 v8, 0x10000

    invoke-virtual {v2, p0, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 180
    .local v4, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 181
    .local v1, "isJumpTargetApp":Z
    const/4 v5, 0x0

    .line 185
    .local v5, "resolveListIsSupport":Z
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 186
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 188
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 189
    const/4 v1, 0x1

    .line 199
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    const-string/jumbo v8, "AlibcVisa"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "visa check packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    if-eqz v1, :cond_6

    .line 203
    invoke-virtual {p2, p1}, Lcom/taobao/flowcustoms/visa/VisaInfo;->isSupportApp(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    move v6, v7

    goto :goto_0

    .line 193
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v8}, Lcom/taobao/flowcustoms/visa/VisaInfo;->isSupportApp(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 194
    const/4 v5, 0x1

    goto :goto_1

    .line 205
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_6
    const-string/jumbo v8, "AlibcVisa"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "visa check resolveListIsSupport = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    if-nez v5, :cond_0

    move v6, v7

    goto/16 :goto_0
.end method

.method public static getTipsVisa()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lc8/unf;->instance:Lc8/unf;

    iget-object v0, v0, Lc8/unf;->environment:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    sget-object v1, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;->ONLINE:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    if-ne v0, v1, :cond_0

    .line 232
    const-string/jumbo v0, "8617ab96f88d12c0"

    .line 235
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "b9b3c5093a1971de"

    goto :goto_0
.end method

.method public static getVisa(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 211
    if-nez p0, :cond_0

    .line 212
    const/4 v2, 0x0

    .line 227
    :goto_0
    return-object v2

    .line 215
    :cond_0
    const/4 v2, 0x0

    .line 217
    .local v2, "visaCode":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "dataString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 219
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "visa"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 224
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "visa"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    :cond_2
    goto :goto_0

    .line 221
    .end local v0    # "dataString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "visa"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    :cond_3
    goto :goto_0

    .line 224
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "visa"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    throw v3
.end method

.method private static visaBeforeCheck(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0, "visaCode"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    .line 149
    :cond_0
    invoke-static {}, Lc8/wpf;->isOpenVisaVerify()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    const-string/jumbo v0, "AlibcVisa"

    const-string/jumbo v1, "visa check success \u672a\u5f00\u542fvisa\u6821\u9a8c"

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_1
    invoke-static {p0}, Lc8/wpf;->isGreenCard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    const-string/jumbo v0, "AlibcVisa"

    const-string/jumbo v1, "visa check success VIP \u7528\u6237"

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static visaIsVaild(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "visaCode"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string/jumbo v3, "AlibcVisa"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "visa check visaCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {p3}, Lc8/rpf;->visaBeforeCheck(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 108
    .local v0, "beforeCheckRes":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 138
    :goto_0
    return v2

    .line 111
    :cond_0
    invoke-static {p0, p3}, Lc8/wpf;->getVisaInfoForCache(Landroid/content/Context;Ljava/lang/String;)Lcom/taobao/flowcustoms/visa/VisaInfo;

    move-result-object v1

    .line 113
    .local v1, "visaInfo":Lcom/taobao/flowcustoms/visa/VisaInfo;
    invoke-static {p1, p2, v1}, Lc8/rpf;->checkVisa(Landroid/content/Intent;Ljava/lang/String;Lcom/taobao/flowcustoms/visa/VisaInfo;)I

    move-result v2

    .line 116
    .local v2, "visaIsValid":I
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/taobao/flowcustoms/visa/VisaInfo;->visaIsExpire()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/taobao/flowcustoms/visa/VisaInfo;->visaIsUpdate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    :cond_1
    const-string/jumbo v3, "AlibcVisa"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "visa check updata visaCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v3, Lc8/ppf;

    invoke-direct {v3}, Lc8/ppf;-><init>()V

    invoke-static {p3, v3}, Lc8/zpf;->sendRequest(Ljava/lang/String;Lc8/ypf;)V

    .line 136
    :cond_2
    const-string/jumbo v3, "AlibcVisa"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "visa is vaild -> res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static visaIsVaild(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lc8/qpf;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "visaCode"    # Ljava/lang/String;
    .param p4, "visaValidListener"    # Lc8/qpf;

    .prologue
    .line 40
    if-nez p4, :cond_1

    .line 41
    invoke-static {p0, p1, p2, p3}, Lc8/rpf;->visaIsVaild(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-static {p3}, Lc8/rpf;->visaBeforeCheck(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 47
    .local v0, "beforeCheckRes":Ljava/lang/Integer;
    if-eqz v0, :cond_3

    .line 49
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    .line 50
    new-instance v3, Lcom/taobao/flowcustoms/visa/VisaInfo;

    invoke-direct {v3, p3}, Lcom/taobao/flowcustoms/visa/VisaInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v3}, Lc8/qpf;->onSuccess(Lcom/taobao/flowcustoms/visa/VisaInfo;)V

    goto :goto_0

    .line 52
    :cond_2
    const/4 v3, 0x3

    const-string/jumbo v4, "visa \u4e3anull"

    invoke-interface {p4, v3, v4}, Lc8/qpf;->onFail(ILjava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_3
    invoke-static {p0, p3}, Lc8/wpf;->getVisaInfoForCache(Landroid/content/Context;Ljava/lang/String;)Lcom/taobao/flowcustoms/visa/VisaInfo;

    move-result-object v2

    .line 61
    .local v2, "visaInfo":Lcom/taobao/flowcustoms/visa/VisaInfo;
    invoke-static {p1, p2, v2}, Lc8/rpf;->checkVisa(Landroid/content/Intent;Ljava/lang/String;Lcom/taobao/flowcustoms/visa/VisaInfo;)I

    move-result v1

    .line 63
    .local v1, "visaCheckRes":I
    if-nez v1, :cond_4

    .line 64
    invoke-interface {p4, v2}, Lc8/qpf;->onSuccess(Lcom/taobao/flowcustoms/visa/VisaInfo;)V

    .line 67
    :cond_4
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 68
    const/4 v3, 0x4

    const-string/jumbo v4, "visa \u6821\u9a8c\u4e0d\u901a\u8fc7"

    invoke-interface {p4, v3, v4}, Lc8/qpf;->onFail(ILjava/lang/String;)V

    .line 72
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/taobao/flowcustoms/visa/VisaInfo;->visaIsExpire()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/taobao/flowcustoms/visa/VisaInfo;->visaIsUpdate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    :cond_6
    new-instance v3, Lc8/opf;

    invoke-direct {v3, p1, p2, p4, v1}, Lc8/opf;-><init>(Landroid/content/Intent;Ljava/lang/String;Lc8/qpf;I)V

    invoke-static {p3, v3}, Lc8/zpf;->sendRequest(Ljava/lang/String;Lc8/ypf;)V

    goto :goto_0
.end method
