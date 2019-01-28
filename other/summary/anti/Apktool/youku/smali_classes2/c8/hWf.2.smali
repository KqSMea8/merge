.class public Lc8/hWf;
.super Ljava/lang/Object;
.source "DefaultWXStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/lWf;->removeItem(Ljava/lang/String;Lc8/nWf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/lWf;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$listener:Lc8/nWf;


# direct methods
.method constructor <init>(Lc8/lWf;Ljava/lang/String;Lc8/nWf;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lc8/hWf;->this$0:Lc8/lWf;

    iput-object p2, p0, Lc8/hWf;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lc8/hWf;->val$listener:Lc8/nWf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lc8/hWf;->this$0:Lc8/lWf;

    iget-object v2, p0, Lc8/hWf;->val$key:Ljava/lang/String;

    invoke-static {v1, v2}, Lc8/lWf;->access$200(Lc8/lWf;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lc8/pWf;->removeItemResult(Z)Ljava/util/Map;

    move-result-object v0

    .line 94
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lc8/hWf;->val$listener:Lc8/nWf;

    if-nez v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lc8/hWf;->val$listener:Lc8/nWf;

    invoke-interface {v1, v0}, Lc8/nWf;->onReceived(Ljava/util/Map;)V

    goto :goto_0
.end method
