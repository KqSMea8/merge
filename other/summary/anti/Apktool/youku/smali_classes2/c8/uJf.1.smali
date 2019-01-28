.class public Lc8/uJf;
.super Ljava/lang/Object;
.source "MtopConnection.java"

# interfaces
.implements Lc8/QJf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/vJf;->call(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/vJf;

.field final synthetic val$data:Ljava/util/Map;


# direct methods
.method constructor <init>(Lc8/vJf;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$1"    # Lc8/vJf;

    .prologue
    .line 124
    iput-object p1, p0, Lc8/uJf;->this$1:Lc8/vJf;

    iput-object p2, p0, Lc8/uJf;->val$data:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/util/Map;)V
    .locals 4
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "mqtt_type"

    iget-object v2, p0, Lc8/uJf;->val$data:Ljava/util/Map;

    const-string/jumbo v3, "mqtt_type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string/jumbo v1, "msg_type"

    iget-object v2, p0, Lc8/uJf;->val$data:Ljava/util/Map;

    const-string/jumbo v3, "msg_type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string/jumbo v1, "sub_type"

    iget-object v2, p0, Lc8/uJf;->val$data:Ljava/util/Map;

    const-string/jumbo v3, "sub_type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    if-eqz p2, :cond_0

    .line 135
    const-string/jumbo v1, "data"

    const-string/jumbo v2, "result"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string/jumbo v1, "context"

    const-string/jumbo v2, "context"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v1, "re_msg"

    const-string/jumbo v2, "re_msg"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_0
    iget-object v1, p0, Lc8/uJf;->this$1:Lc8/vJf;

    iget-object v2, v1, Lc8/vJf;->this$0:Lc8/wJf;

    iget-object v1, p0, Lc8/uJf;->val$data:Ljava/util/Map;

    const-string/jumbo v3, "id"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, p1, v0}, Lc8/wJf;->onResponse(Ljava/lang/String;ILjava/util/Map;)V

    .line 140
    return-void
.end method
