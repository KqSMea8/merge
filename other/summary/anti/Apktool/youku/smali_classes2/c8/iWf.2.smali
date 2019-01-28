.class public Lc8/iWf;
.super Ljava/lang/Object;
.source "DefaultWXStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/lWf;->length(Lc8/nWf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/lWf;

.field final synthetic val$listener:Lc8/nWf;


# direct methods
.method constructor <init>(Lc8/lWf;Lc8/nWf;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lc8/iWf;->this$0:Lc8/lWf;

    iput-object p2, p0, Lc8/iWf;->val$listener:Lc8/nWf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 107
    iget-object v1, p0, Lc8/iWf;->this$0:Lc8/lWf;

    invoke-static {v1}, Lc8/lWf;->access$300(Lc8/lWf;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lc8/pWf;->getLengthResult(J)Ljava/util/Map;

    move-result-object v0

    .line 108
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lc8/iWf;->val$listener:Lc8/nWf;

    if-nez v1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lc8/iWf;->val$listener:Lc8/nWf;

    invoke-interface {v1, v0}, Lc8/nWf;->onReceived(Ljava/util/Map;)V

    goto :goto_0
.end method
