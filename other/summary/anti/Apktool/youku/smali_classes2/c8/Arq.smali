.class public Lc8/Arq;
.super Ljava/lang/Object;
.source "OperatorDebounceWithTime.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Brq;->onNext(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Brq;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lc8/Brq;I)V
    .locals 0

    .prologue
    .line 76
    .local p0, "this":Lc8/Arq;, "Lrx/internal/operators/OperatorDebounceWithTime$1.1;"
    iput-object p1, p0, Lc8/Arq;->this$1:Lc8/Brq;

    iput p2, p0, Lc8/Arq;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .prologue
    .line 79
    .local p0, "this":Lc8/Arq;, "Lrx/internal/operators/OperatorDebounceWithTime$1.1;"
    iget-object v0, p0, Lc8/Arq;->this$1:Lc8/Brq;

    iget-object v0, v0, Lc8/Brq;->state:Lc8/Crq;

    iget v1, p0, Lc8/Arq;->val$index:I

    iget-object v2, p0, Lc8/Arq;->this$1:Lc8/Brq;

    iget-object v2, v2, Lc8/Brq;->val$s:Lc8/qAq;

    iget-object v3, p0, Lc8/Arq;->this$1:Lc8/Brq;

    iget-object v3, v3, Lc8/Brq;->self:Lc8/Omq;

    invoke-virtual {v0, v1, v2, v3}, Lc8/Crq;->emit(ILc8/Omq;Lc8/Omq;)V

    .line 80
    return-void
.end method
