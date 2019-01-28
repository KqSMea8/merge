.class public Lc8/Nxb;
.super Ljava/lang/Object;
.source "WorkFlow.java"

# interfaces
.implements Lc8/Hxb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Oxb;->call(Ljava/lang/Object;)Lc8/jyb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Hxb",
        "<TN;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Oxb;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lc8/Oxb;I)V
    .locals 0
    .param p1, "this$0"    # Lc8/Oxb;

    .prologue
    .line 374
    .local p0, "this":Lc8/Nxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$BranchParallel$1;"
    iput-object p1, p0, Lc8/Nxb;->this$0:Lc8/Oxb;

    iput p2, p0, Lc8/Nxb;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TR;"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, "this":Lc8/Nxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$BranchParallel$1;"
    .local p1, "n":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lc8/Nxb;->this$0:Lc8/Oxb;

    iget v1, p0, Lc8/Nxb;->val$index:I

    invoke-virtual {v0, v1, p1}, Lc8/Oxb;->branch(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
