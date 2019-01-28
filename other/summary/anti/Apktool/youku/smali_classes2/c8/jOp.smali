.class public Lc8/jOp;
.super Ljava/lang/Object;
.source "MtopConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/kOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtopDomain"
.end annotation


# static fields
.field public static final FOR_DAILY:I = 0x2

.field public static final FOR_DAILY_2ND:I = 0x3

.field public static final FOR_ONLINE:I = 0x0

.field public static final FOR_PREPARED:I = 0x1


# instance fields
.field final defaultDomains:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lc8/jOp;->defaultDomains:[Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lc8/jOp;->defaultDomains:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "acs.m.taobao.com"

    aput-object v2, v0, v1

    .line 191
    iget-object v0, p0, Lc8/jOp;->defaultDomains:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string/jumbo v2, "acs.wapa.taobao.com"

    aput-object v2, v0, v1

    .line 192
    iget-object v0, p0, Lc8/jOp;->defaultDomains:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string/jumbo v2, "acs.waptest.taobao.com"

    aput-object v2, v0, v1

    .line 193
    iget-object v0, p0, Lc8/jOp;->defaultDomains:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string/jumbo v2, "api.waptest2nd.taobao.com"

    aput-object v2, v0, v1

    .line 195
    return-void
.end method


# virtual methods
.method public getDomain(Lmtopsdk/mtop/domain/EnvModeEnum;)Ljava/lang/String;
    .locals 3
    .param p1, "envMode"    # Lmtopsdk/mtop/domain/EnvModeEnum;

    .prologue
    const/4 v2, 0x0

    .line 199
    sget-object v0, Lc8/iOp;->$SwitchMap$mtopsdk$mtop$domain$EnvModeEnum:[I

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/EnvModeEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 209
    iget-object v0, p0, Lc8/jOp;->defaultDomains:[Ljava/lang/String;

    aget-object v0, v0, v2

    :goto_0
    return-object v0

    .line 201
    :pswitch_0
    iget-object v0, p0, Lc8/jOp;->defaultDomains:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_0

    .line 203
    :pswitch_1
    iget-object v0, p0, Lc8/jOp;->defaultDomains:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 205
    :pswitch_2
    iget-object v0, p0, Lc8/jOp;->defaultDomains:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 207
    :pswitch_3
    iget-object v0, p0, Lc8/jOp;->defaultDomains:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateDomain(Lmtopsdk/mtop/domain/EnvModeEnum;Ljava/lang/String;)V
    .locals 2
    .param p1, "envMode"    # Lmtopsdk/mtop/domain/EnvModeEnum;
    .param p2, "customDomain"    # Ljava/lang/String;

    .prologue
    .line 214
    sget-object v0, Lc8/iOp;->$SwitchMap$mtopsdk$mtop$domain$EnvModeEnum:[I

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/EnvModeEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 216
    :pswitch_0
    iget-object v0, p0, Lc8/jOp;->defaultDomains:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 218
    :pswitch_1
    iget-object v0, p0, Lc8/jOp;->defaultDomains:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 220
    :pswitch_2
    iget-object v0, p0, Lc8/jOp;->defaultDomains:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 222
    :pswitch_3
    iget-object v0, p0, Lc8/jOp;->defaultDomains:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p2, v0, v1

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
