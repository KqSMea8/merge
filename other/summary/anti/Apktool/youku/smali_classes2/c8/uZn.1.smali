.class public Lc8/uZn;
.super Ljava/lang/Object;
.source "ObserverManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/vZn;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/vZn;

.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$event:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/vZn;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lc8/vZn;

    .prologue
    .line 68
    iput-object p1, p0, Lc8/uZn;->this$0:Lc8/vZn;

    iput-object p2, p0, Lc8/uZn;->val$event:Ljava/lang/String;

    iput-object p3, p0, Lc8/uZn;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lc8/uZn;->this$0:Lc8/vZn;

    iget-object v1, p0, Lc8/uZn;->val$event:Ljava/lang/String;

    iget-object v2, p0, Lc8/uZn;->val$data:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lc8/vZn;->dispatchEventOnUiThread(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    return-void
.end method
