.class public Lc8/Dfn;
.super Ljava/lang/Object;
.source "CredentialProvider.java"

# interfaces
.implements Lc8/kAo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Efn;->onUserLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Efn;


# direct methods
.method constructor <init>(Lc8/Efn;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Efn;

    .prologue
    .line 244
    iput-object p1, p0, Lc8/Dfn;->this$1:Lc8/Efn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setVip(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 247
    if-eqz p1, :cond_0

    invoke-static {}, Lc8/ofn;->getInstance()Lc8/ofn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/ofn;->canDownloadAccForVipUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lc8/ben;->enableVipMode(I)V

    .line 250
    :cond_0
    return-void
.end method
