.class public Lc8/rhq;
.super Lc8/Cgq;
.source "RestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/shq;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/shq;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$interceptorTape:Lc8/ihq;

.field final synthetic val$methodInfo:Lc8/vhq;


# direct methods
.method constructor <init>(Lc8/shq;Lc8/zgq;Ljava/util/concurrent/Executor;Lc8/Hgq;Lc8/ihq;Lc8/vhq;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lc8/shq;
    .param p2, "callback"    # Lc8/zgq;
    .param p3, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "errorHandler"    # Lc8/Hgq;

    .prologue
    .line 276
    iput-object p1, p0, Lc8/rhq;->this$1:Lc8/shq;

    iput-object p5, p0, Lc8/rhq;->val$interceptorTape:Lc8/ihq;

    iput-object p6, p0, Lc8/rhq;->val$methodInfo:Lc8/vhq;

    iput-object p7, p0, Lc8/rhq;->val$args:[Ljava/lang/Object;

    invoke-direct {p0, p2, p3, p4}, Lc8/Cgq;-><init>(Lc8/zgq;Ljava/util/concurrent/Executor;Lc8/Hgq;)V

    return-void
.end method


# virtual methods
.method public obtainResponse()Lc8/khq;
    .locals 4

    .prologue
    .line 278
    iget-object v0, p0, Lc8/rhq;->this$1:Lc8/shq;

    iget-object v1, p0, Lc8/rhq;->val$interceptorTape:Lc8/ihq;

    iget-object v2, p0, Lc8/rhq;->val$methodInfo:Lc8/vhq;

    iget-object v3, p0, Lc8/rhq;->val$args:[Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/shq;->access$100(Lc8/shq;Lc8/fhq;Lc8/vhq;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/khq;

    return-object v0
.end method
