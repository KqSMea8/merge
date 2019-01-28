.class public Lc8/FKd;
.super Ljava/lang/Object;
.source "RegisterStatusStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/GKd;->executeAfterGetDeviceId(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/GKd;


# direct methods
.method constructor <init>(Lc8/GKd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/GKd;

    .prologue
    .line 147
    iput-object p1, p0, Lc8/FKd;->this$0:Lc8/GKd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lc8/FKd;->this$0:Lc8/GKd;

    invoke-virtual {v0}, Lc8/GKd;->getDeviceId()Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lc8/FKd;->this$0:Lc8/GKd;

    iget-object v0, v0, Lc8/GKd;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 152
    return-void
.end method
