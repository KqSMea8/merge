.class public abstract Lc8/eQp;
.super Ljava/lang/Object;
.source "AbstractSignImpl.java"

# interfaces
.implements Lc8/gQp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/dQp;
    }
.end annotation


# instance fields
.field envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

.field mtopConfig:Lc8/kOp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lc8/eQp;->mtopConfig:Lc8/kOp;

    .line 16
    iput-object v0, p0, Lc8/eQp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    return-void
.end method


# virtual methods
.method getAuthCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lc8/eQp;->mtopConfig:Lc8/kOp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/eQp;->mtopConfig:Lc8/kOp;

    iget-object v0, v0, Lc8/kOp;->authCode:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getAvmpSign(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "authCode"    # Ljava/lang/String;
    .param p3, "flag"    # I

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method getEnv()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 27
    iget-object v1, p0, Lc8/eQp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    if-nez v1, :cond_0

    .line 42
    :goto_0
    :pswitch_0
    return v0

    .line 30
    :cond_0
    sget-object v1, Lc8/dQp;->$SwitchMap$mtopsdk$mtop$domain$EnvModeEnum:[I

    iget-object v2, p0, Lc8/eQp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/EnvModeEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 35
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 39
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lc8/eQp;->mtopConfig:Lc8/kOp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/eQp;->mtopConfig:Lc8/kOp;

    iget-object v0, v0, Lc8/kOp;->instanceId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public init(Lc8/kOp;)V
    .locals 1
    .param p1, "mtopConfig"    # Lc8/kOp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 20
    iput-object p1, p0, Lc8/eQp;->mtopConfig:Lc8/kOp;

    .line 21
    iget-object v0, p0, Lc8/eQp;->mtopConfig:Lc8/kOp;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lc8/eQp;->mtopConfig:Lc8/kOp;

    iget-object v0, v0, Lc8/kOp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    iput-object v0, p0, Lc8/eQp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 24
    :cond_0
    return-void
.end method
