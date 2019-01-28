.class public Lc8/Sdn;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lc8/kAo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Tdn;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Tdn;


# direct methods
.method constructor <init>(Lc8/Tdn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Tdn;

    .prologue
    .line 189
    iput-object p1, p0, Lc8/Sdn;->this$0:Lc8/Tdn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setVip(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isVip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    if-eqz p1, :cond_0

    invoke-static {}, Lc8/ofn;->getInstance()Lc8/ofn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/ofn;->canDownloadAccForVipUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-static {}, Lc8/ben;->access$300()Lc8/ben;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lc8/ben;->enableVipMode(I)V

    .line 196
    :cond_0
    return-void
.end method
