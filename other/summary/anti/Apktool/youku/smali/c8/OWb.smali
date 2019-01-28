.class public Lc8/OWb;
.super Ljava/lang/Object;
.source "Protocol.java"

# interfaces
.implements Lc8/RWb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/SWb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsonPacket"
.end annotation


# instance fields
.field jsonObject:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lc8/OWb;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    .line 197
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lc8/OWb;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    .line 201
    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 280
    if-nez p1, :cond_0

    .line 281
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lc8/OWb;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    .line 283
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lc8/OWb;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    .line 284
    return-void
.end method

.method public getRaw()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lc8/OWb;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/OWb;->read(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 225
    if-nez p1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-object v0

    .line 229
    :cond_1
    iget-object v1, p0, Lc8/OWb;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_0

    .line 233
    if-nez p2, :cond_2

    iget-object v0, p0, Lc8/OWb;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc8/OWb;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public readData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/OWb;->readData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 260
    if-nez p1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-object v1

    .line 264
    :cond_1
    iget-object v2, p0, Lc8/OWb;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_0

    .line 268
    iget-object v1, p0, Lc8/OWb;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 270
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    if-nez p2, :cond_2

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public serialize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lc8/OWb;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/OWb;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 205
    if-eqz p1, :cond_0

    const-string/jumbo v0, "data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    if-eqz p2, :cond_0

    .line 213
    iget-object v0, p0, Lc8/OWb;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lc8/OWb;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public writeData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 238
    if-nez p1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    if-eqz p2, :cond_0

    .line 246
    iget-object v1, p0, Lc8/OWb;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 247
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    if-nez v0, :cond_2

    .line 248
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .end local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 249
    .restart local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    iget-object v1, p0, Lc8/OWb;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
