.class public Lc8/Jt;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Kt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TriggerLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Kt;


# direct methods
.method constructor <init>(Lc8/Kt;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lc8/Jt;->this$0:Lc8/Kt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lc8/Jt;->this$0:Lc8/Kt;

    invoke-virtual {v0}, Lc8/Kt;->onLongPress()V

    .line 369
    return-void
.end method
