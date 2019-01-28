.class public Lc8/Gvq;
.super Ljava/lang/Object;
.source "OperatorUnsubscribeOn.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Hvq;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Hvq;

.field final synthetic val$inner:Lc8/Zlq;


# direct methods
.method constructor <init>(Lc8/Hvq;Lc8/Zlq;)V
    .locals 0

    .prologue
    .line 62
    .local p0, "this":Lc8/Gvq;, "Lrx/internal/operators/OperatorUnsubscribeOn$2.1;"
    iput-object p1, p0, Lc8/Gvq;->this$1:Lc8/Hvq;

    iput-object p2, p0, Lc8/Gvq;->val$inner:Lc8/Zlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lc8/Gvq;, "Lrx/internal/operators/OperatorUnsubscribeOn$2.1;"
    iget-object v0, p0, Lc8/Gvq;->this$1:Lc8/Hvq;

    iget-object v0, v0, Lc8/Hvq;->val$parent:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->unsubscribe()V

    .line 67
    iget-object v0, p0, Lc8/Gvq;->val$inner:Lc8/Zlq;

    invoke-virtual {v0}, Lc8/Zlq;->unsubscribe()V

    .line 68
    return-void
.end method
