.class public Lc8/Apb;
.super Ljava/lang/Object;
.source "WXLatestVisitView.java"

# interfaces
.implements Lc8/Rvb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Bpb;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Bpb;


# direct methods
.method constructor <init>(Lc8/Bpb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Bpb;

    .prologue
    .line 28
    iput-object p1, p0, Lc8/Apb;->this$0:Lc8/Bpb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnNearlyItemClick(Lc8/Tvb;)V
    .locals 2
    .param p1, "item"    # Lc8/Tvb;

    .prologue
    .line 32
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc8/Tvb;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "openUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lc8/Tvb;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method
