.class public Lcom/taobao/accs/internal/ElectionServiceImpl$4;
.super Ljava/lang/Object;
.source "ElectionServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/internal/ElectionServiceImpl;->startElection(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/internal/ElectionServiceImpl;


# direct methods
.method constructor <init>(Lcom/taobao/accs/internal/ElectionServiceImpl;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/taobao/accs/internal/ElectionServiceImpl$4;->this$0:Lcom/taobao/accs/internal/ElectionServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 637
    const-string/jumbo v0, "ElectionServiceImpl"

    const-string/jumbo v1, "time out, onReportComplete"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "pkgs"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/taobao/accs/internal/ElectionServiceImpl$4;->this$0:Lcom/taobao/accs/internal/ElectionServiceImpl;

    invoke-static {v4}, Lcom/taobao/accs/internal/ElectionServiceImpl;->access$600(Lcom/taobao/accs/internal/ElectionServiceImpl;)Ljava/util/Map;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    iget-object v0, p0, Lcom/taobao/accs/internal/ElectionServiceImpl$4;->this$0:Lcom/taobao/accs/internal/ElectionServiceImpl;

    invoke-static {v0}, Lcom/taobao/accs/internal/ElectionServiceImpl;->access$700(Lcom/taobao/accs/internal/ElectionServiceImpl;)V

    .line 639
    return-void
.end method
