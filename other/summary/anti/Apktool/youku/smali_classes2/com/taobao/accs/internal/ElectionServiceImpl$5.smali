.class public Lcom/taobao/accs/internal/ElectionServiceImpl$5;
.super Ljava/lang/Object;
.source "ElectionServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/internal/ElectionServiceImpl;->onReportComplete()V
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
    .line 690
    iput-object p1, p0, Lcom/taobao/accs/internal/ElectionServiceImpl$5;->this$0:Lcom/taobao/accs/internal/ElectionServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 694
    const-string/jumbo v0, "ElectionServiceImpl"

    const-string/jumbo v1, "serverElection time out"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    iget-object v0, p0, Lcom/taobao/accs/internal/ElectionServiceImpl$5;->this$0:Lcom/taobao/accs/internal/ElectionServiceImpl;

    const/4 v1, 0x0

    const/16 v2, -0x9

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/internal/ElectionServiceImpl;->access$000(Lcom/taobao/accs/internal/ElectionServiceImpl;[BI)V

    .line 696
    return-void
.end method
