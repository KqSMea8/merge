.class public Lc8/Wdn;
.super Lc8/Zdn;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ben;->setOnCreateDownloadListener(Lc8/Cen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ben;


# direct methods
.method constructor <init>(Lc8/ben;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ben;

    .prologue
    .line 848
    iput-object p1, p0, Lc8/Wdn;->this$0:Lc8/ben;

    invoke-direct {p0, p1}, Lc8/Zdn;-><init>(Lc8/ben;)V

    return-void
.end method


# virtual methods
.method public onCompleted(Z)V
    .locals 2
    .param p1, "isNeedRefresh"    # Z

    .prologue
    .line 851
    iget-object v0, p0, Lc8/Wdn;->this$0:Lc8/ben;

    invoke-static {v0}, Lc8/ben;->access$900(Lc8/ben;)Lc8/Cen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lc8/Wdn;->this$0:Lc8/ben;

    invoke-static {v0}, Lc8/ben;->access$900(Lc8/ben;)Lc8/Cen;

    move-result-object v0

    invoke-interface {v0, p1}, Lc8/Cen;->onCompleted(Z)V

    .line 853
    iget-object v0, p0, Lc8/Wdn;->this$0:Lc8/ben;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/ben;->access$902(Lc8/ben;Lc8/Cen;)Lc8/Cen;

    .line 855
    :cond_0
    return-void
.end method
