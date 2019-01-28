.class public Lc8/BWf;
.super Ljava/lang/Object;
.source "WebSocketModule.java"

# interfaces
.implements Lc8/yWf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/CWf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/CWf;


# direct methods
.method constructor <init>(Lc8/CWf;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lc8/BWf;->this$0:Lc8/CWf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "wasClean"    # Z

    .prologue
    .line 65
    iget-object v1, p0, Lc8/BWf;->this$0:Lc8/CWf;

    invoke-static {v1}, Lc8/CWf;->access$200(Lc8/CWf;)Lc8/EWf;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 67
    .local v0, "msg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string/jumbo v1, "reason"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v1, "wasClean"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lc8/BWf;->this$0:Lc8/CWf;

    invoke-static {v1}, Lc8/CWf;->access$200(Lc8/CWf;)Lc8/EWf;

    move-result-object v1

    invoke-interface {v1, v0}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 72
    .end local v0    # "msg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v1, p0, Lc8/BWf;->this$0:Lc8/CWf;

    invoke-static {v1}, Lc8/CWf;->access$300(Lc8/CWf;)Lc8/EWf;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 78
    .local v0, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "data"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lc8/BWf;->this$0:Lc8/CWf;

    invoke-static {v1}, Lc8/CWf;->access$300(Lc8/CWf;)Lc8/EWf;

    move-result-object v1

    invoke-interface {v1, v0}, Lc8/EWf;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 81
    .end local v0    # "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v1, p0, Lc8/BWf;->this$0:Lc8/CWf;

    invoke-static {v1}, Lc8/CWf;->access$100(Lc8/CWf;)Lc8/EWf;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 58
    .local v0, "msg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "data"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lc8/BWf;->this$0:Lc8/CWf;

    invoke-static {v1}, Lc8/CWf;->access$100(Lc8/CWf;)Lc8/EWf;

    move-result-object v1

    invoke-interface {v1, v0}, Lc8/EWf;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 61
    .end local v0    # "msg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public onOpen()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lc8/BWf;->this$0:Lc8/CWf;

    invoke-static {v0}, Lc8/CWf;->access$000(Lc8/CWf;)Lc8/EWf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lc8/BWf;->this$0:Lc8/CWf;

    invoke-static {v0}, Lc8/CWf;->access$000(Lc8/CWf;)Lc8/EWf;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, v1}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 52
    :cond_0
    return-void
.end method
