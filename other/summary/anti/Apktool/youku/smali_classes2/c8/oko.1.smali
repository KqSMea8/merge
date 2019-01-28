.class public final Lc8/oko;
.super Lc8/Fko;
.source "Passport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gko;->getSNSBindInfo(Lc8/Mko;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$aCallback:Lc8/Mko;


# direct methods
.method constructor <init>(Lc8/Mko;)V
    .locals 0

    .prologue
    .line 798
    iput-object p1, p0, Lc8/oko;->val$aCallback:Lc8/Mko;

    invoke-direct {p0}, Lc8/Fko;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 4
    .param p1, "aCode"    # I
    .param p2, "aMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 802
    iget-object v2, p0, Lc8/oko;->val$aCallback:Lc8/Mko;

    invoke-static {v2}, Lc8/Wko;->initResult(Lc8/Mko;)Lc8/Pko;

    move-result-object v1

    .line 803
    .local v1, "result":Lc8/Pko;, "TT;"
    if-nez v1, :cond_0

    .line 828
    :goto_0
    return-void

    .line 807
    :cond_0
    iput-boolean v3, v1, Lc8/Pko;->mBinded:Z

    .line 808
    if-nez p1, :cond_3

    .line 809
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 810
    new-instance v0, Lc8/Qko;

    invoke-direct {v0}, Lc8/Qko;-><init>()V

    .line 811
    .local v0, "bindInfo":Lc8/Qko;
    invoke-virtual {v0, p2}, Lc8/Qko;->parseFrom(Ljava/lang/String;)V

    .line 812
    iput-object v0, v1, Lc8/Pko;->mBindInfo:Lc8/Qko;

    .line 813
    iget-object v2, v0, Lc8/Qko;->mTuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 814
    const/4 v2, 0x1

    iput-boolean v2, v1, Lc8/Pko;->mBinded:Z

    .line 816
    :cond_1
    invoke-virtual {v1, v3}, Lc8/Pko;->setResultCode(I)V

    .line 817
    iget-object v2, p0, Lc8/oko;->val$aCallback:Lc8/Mko;

    invoke-interface {v2, v1}, Lc8/Mko;->onSuccess(Lc8/Oko;)V

    goto :goto_0

    .line 819
    .end local v0    # "bindInfo":Lc8/Qko;
    :cond_2
    const/16 v2, -0x65

    invoke-virtual {v1, v2}, Lc8/Pko;->setResultCode(I)V

    .line 820
    const-string/jumbo v2, "\u7cfb\u7edf\u5f00\u5c0f\u5dee\uff0c\u8bf7\u91cd\u8bd5"

    invoke-virtual {v1, v2}, Lc8/Pko;->setResultMsg(Ljava/lang/String;)V

    .line 821
    iget-object v2, p0, Lc8/oko;->val$aCallback:Lc8/Mko;

    invoke-interface {v2, v1}, Lc8/Mko;->onFailure(Lc8/Oko;)V

    goto :goto_0

    .line 824
    :cond_3
    invoke-virtual {v1, p1}, Lc8/Pko;->setResultCode(I)V

    .line 825
    invoke-virtual {v1, p2}, Lc8/Pko;->setResultMsg(Ljava/lang/String;)V

    .line 826
    iget-object v2, p0, Lc8/oko;->val$aCallback:Lc8/Mko;

    invoke-interface {v2, v1}, Lc8/Mko;->onFailure(Lc8/Oko;)V

    goto :goto_0
.end method
