.class public Lc8/Udn;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lc8/Qgn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Vdn;->doDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Vdn;


# direct methods
.method constructor <init>(Lc8/Vdn;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Vdn;

    .prologue
    .line 801
    iput-object p1, p0, Lc8/Udn;->this$1:Lc8/Vdn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelClickEvent()V
    .locals 0

    .prologue
    .line 810
    return-void
.end method

.method public doClickEvent()V
    .locals 5

    .prologue
    .line 804
    iget-object v0, p0, Lc8/Udn;->this$1:Lc8/Vdn;

    iget-object v0, v0, Lc8/Vdn;->this$0:Lc8/ben;

    iget-object v1, p0, Lc8/Udn;->this$1:Lc8/Vdn;

    iget-object v1, v1, Lc8/Vdn;->val$showId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Udn;->this$1:Lc8/Vdn;

    iget-object v2, v2, Lc8/Vdn;->val$videoId:Ljava/lang/String;

    iget-object v3, p0, Lc8/Udn;->this$1:Lc8/Vdn;

    iget-object v3, v3, Lc8/Vdn;->val$videoName:Ljava/lang/String;

    iget-object v4, p0, Lc8/Udn;->this$1:Lc8/Vdn;

    iget-object v4, v4, Lc8/Vdn;->val$listener:Lc8/Cen;

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/ben;->createDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Cen;)V

    .line 805
    return-void
.end method
