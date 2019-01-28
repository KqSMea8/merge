.class public Lc8/Vdn;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lc8/Qdn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ben;->createDownloadWithLoginAndFreeFlowDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Cen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ben;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Lc8/Cen;

.field final synthetic val$showId:Ljava/lang/String;

.field final synthetic val$videoId:Ljava/lang/String;

.field final synthetic val$videoName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/ben;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Cen;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ben;

    .prologue
    .line 797
    iput-object p1, p0, Lc8/Vdn;->this$0:Lc8/ben;

    iput-object p2, p0, Lc8/Vdn;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lc8/Vdn;->val$showId:Ljava/lang/String;

    iput-object p4, p0, Lc8/Vdn;->val$videoId:Ljava/lang/String;

    iput-object p5, p0, Lc8/Vdn;->val$videoName:Ljava/lang/String;

    iput-object p6, p0, Lc8/Vdn;->val$listener:Lc8/Cen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doDownload()V
    .locals 4

    .prologue
    .line 801
    const-class v0, Lc8/Rgn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Rgn;

    iget-object v1, p0, Lc8/Vdn;->val$activity:Landroid/app/Activity;

    const v2, 0x127ecf

    new-instance v3, Lc8/Udn;

    invoke-direct {v3, p0}, Lc8/Udn;-><init>(Lc8/Vdn;)V

    invoke-interface {v0, v1, v2, v3}, Lc8/Rgn;->showMessageDialog(Landroid/content/Context;ILc8/Qgn;)V

    .line 812
    return-void
.end method

.method public doSomeThing()V
    .locals 0

    .prologue
    .line 817
    return-void
.end method
