.class public Lc8/wwb;
.super Ljava/lang/Object;
.source "PackageCache.java"

# interfaces
.implements Lc8/Hxb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Awb;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Hxb",
        "<",
        "Lc8/lwb;",
        "Lc8/mwb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Awb;


# direct methods
.method constructor <init>(Lc8/Awb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Awb;

    .prologue
    .line 163
    iput-object p1, p0, Lc8/wwb;->this$0:Lc8/Awb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/lwb;)Lc8/mwb;
    .locals 13
    .param p1, "item"    # Lc8/lwb;

    .prologue
    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 167
    .local v2, "cacheStart":J
    iget-object v9, p1, Lc8/lwb;->remoteInfo:Lc8/mwb;

    .line 168
    .local v9, "remoteInfo":Lc8/mwb;
    iget-object v10, p1, Lc8/lwb;->depInfos:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/aliweex/cache/Package$Info;

    .line 169
    .local v5, "info":Lcom/alibaba/aliweex/cache/Package$Info;
    iget-object v11, v5, Lcom/alibaba/aliweex/cache/Package$Info;->from:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 170
    const-string/jumbo v11, "zcache"

    iget-object v12, v5, Lcom/alibaba/aliweex/cache/Package$Info;->from:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 171
    iget-object v11, p0, Lc8/wwb;->this$0:Lc8/Awb;

    invoke-virtual {v11, v5}, Lc8/Awb;->putCache(Lcom/alibaba/aliweex/cache/Package$Info;)V

    goto :goto_0

    .line 172
    :cond_1
    const-string/jumbo v11, "avfs"

    iget-object v12, v5, Lcom/alibaba/aliweex/cache/Package$Info;->from:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 173
    iget-object v11, p0, Lc8/wwb;->this$0:Lc8/Awb;

    invoke-static {v11, v5}, Lc8/Awb;->access$000(Lc8/Awb;Lcom/alibaba/aliweex/cache/Package$Info;)V

    goto :goto_0

    .line 177
    .end local v5    # "info":Lcom/alibaba/aliweex/cache/Package$Info;
    :cond_2
    iget-object v10, v9, Lc8/mwb;->comboJsData:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 178
    iget-object v10, v9, Lc8/mwb;->comboJsData:Ljava/lang/String;

    const-string/jumbo v11, "/\\*combo\\*/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 179
    .local v8, "pkgs":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v10, v8

    if-ge v4, v10, :cond_3

    .line 180
    iget-object v10, v9, Lc8/mwb;->remoteInfoIndex:Ljava/util/Vector;

    invoke-virtual {v10, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 181
    .local v6, "pkgIndex":I
    iget-object v10, p1, Lc8/lwb;->depInfos:Ljava/util/Vector;

    invoke-virtual {v10, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/aliweex/cache/Package$Info;

    .line 182
    .local v7, "pkgInfo":Lcom/alibaba/aliweex/cache/Package$Info;
    aget-object v10, v8, v4

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/alibaba/aliweex/cache/Package$Info;->code:Ljava/lang/String;

    .line 183
    const-string/jumbo v10, "network"

    iput-object v10, v7, Lcom/alibaba/aliweex/cache/Package$Info;->from:Ljava/lang/String;

    .line 184
    iget-object v10, p0, Lc8/wwb;->this$0:Lc8/Awb;

    invoke-virtual {v10, v7}, Lc8/Awb;->putCache(Lcom/alibaba/aliweex/cache/Package$Info;)V

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 187
    .end local v4    # "i":I
    .end local v6    # "pkgIndex":I
    .end local v7    # "pkgInfo":Lcom/alibaba/aliweex/cache/Package$Info;
    .end local v8    # "pkgs":[Ljava/lang/String;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v0, v10, v2

    .line 188
    .local v0, "cacheOneTime":J
    const-string/jumbo v10, "Page_Cache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "save one item cache time:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v10, p1, Lc8/lwb;->remoteInfo:Lc8/mwb;

    return-object v10
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 163
    check-cast p1, Lc8/lwb;

    invoke-virtual {p0, p1}, Lc8/wwb;->call(Lc8/lwb;)Lc8/mwb;

    move-result-object v0

    return-object v0
.end method
