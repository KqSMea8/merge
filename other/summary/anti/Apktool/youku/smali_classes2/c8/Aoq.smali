.class public Lc8/Aoq;
.super Ljava/lang/Object;
.source "BufferUntilSubscriber.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Boq;->call(Lc8/Omq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Boq;


# direct methods
.method constructor <init>(Lc8/Boq;)V
    .locals 0

    .prologue
    .line 91
    .local p0, "this":Lc8/Aoq;, "Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction.1;"
    iput-object p1, p0, Lc8/Aoq;->this$0:Lc8/Boq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 95
    .local p0, "this":Lc8/Aoq;, "Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction.1;"
    iget-object v0, p0, Lc8/Aoq;->this$0:Lc8/Boq;

    iget-object v0, v0, Lc8/Boq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    sget-object v1, Lc8/Coq;->EMPTY_OBSERVER:Lc8/Wlq;

    invoke-virtual {v0, v1}, Lrx/internal/operators/BufferUntilSubscriber$State;->set(Ljava/lang/Object;)V

    .line 96
    return-void
.end method
