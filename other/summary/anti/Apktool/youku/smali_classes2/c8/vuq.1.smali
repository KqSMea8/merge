.class public Lc8/vuq;
.super Ljava/lang/Object;
.source "OperatorSwitch.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xuq;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xuq;


# direct methods
.method constructor <init>(Lc8/xuq;)V
    .locals 0

    .prologue
    .line 112
    .local p0, "this":Lc8/vuq;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber.1;"
    iput-object p1, p0, Lc8/vuq;->this$0:Lc8/xuq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 115
    .local p0, "this":Lc8/vuq;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber.1;"
    iget-object v0, p0, Lc8/vuq;->this$0:Lc8/xuq;

    invoke-virtual {v0}, Lc8/xuq;->clearProducer()V

    .line 116
    return-void
.end method
