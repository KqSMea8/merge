.class public Lc8/Kzk;
.super Ljava/lang/Object;
.source "CMSSkinManager.java"

# interfaces
.implements Lc8/JNp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Nzk;


# direct methods
.method constructor <init>(Lc8/Nzk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Nzk;

    .prologue
    .line 120
    iput-object p1, p0, Lc8/Kzk;->this$0:Lc8/Nzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 8
    .param p1, "mtopFinishEvent"    # Lc8/ONp;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 123
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v3

    .line 124
    .local v3, "response":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 126
    :try_start_0
    iget-object v6, p0, Lc8/Kzk;->this$0:Lc8/Nzk;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v7, "skin"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-class v7, Lcom/youku/phone/skin/data/CMSSkinData;

    invoke-static {v5, v7}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/phone/skin/data/CMSSkinData;

    invoke-static {v6, v5}, Lc8/Nzk;->access$202(Lc8/Nzk;Lcom/youku/phone/skin/data/CMSSkinData;)Lcom/youku/phone/skin/data/CMSSkinData;

    .line 129
    iget-object v5, p0, Lc8/Kzk;->this$0:Lc8/Nzk;

    invoke-static {v5}, Lc8/Nzk;->access$200(Lc8/Nzk;)Lcom/youku/phone/skin/data/CMSSkinData;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lc8/Kzk;->this$0:Lc8/Nzk;

    invoke-static {v5}, Lc8/Nzk;->access$200(Lc8/Nzk;)Lcom/youku/phone/skin/data/CMSSkinData;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lc8/Kzk;->this$0:Lc8/Nzk;

    invoke-static {v5}, Lc8/Nzk;->access$200(Lc8/Nzk;)Lcom/youku/phone/skin/data/CMSSkinData;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v5, v5, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->bottom:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lc8/Kzk;->this$0:Lc8/Nzk;

    invoke-static {v5}, Lc8/Nzk;->access$200(Lc8/Nzk;)Lcom/youku/phone/skin/data/CMSSkinData;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v5, v5, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->bottom:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_2

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v2, "remainList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/phone/skin/data/CMSSkinData$TabTag;>;"
    const/4 v1, 0x0

    .line 132
    .local v1, "index":I
    iget-object v5, p0, Lc8/Kzk;->this$0:Lc8/Nzk;

    invoke-static {v5}, Lc8/Nzk;->access$200(Lc8/Nzk;)Lcom/youku/phone/skin/data/CMSSkinData;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v5, v5, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->bottom:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;

    .line 133
    .local v4, "tag":Lcom/youku/phone/skin/data/CMSSkinData$TabTag;
    iget v6, v4, Lcom/youku/phone/skin/data/CMSSkinData$TabTag;->id:I

    const/4 v7, 0x6

    if-ge v6, v7, :cond_0

    .line 134
    invoke-interface {v2, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v4    # "tag":Lcom/youku/phone/skin/data/CMSSkinData$TabTag;
    :cond_1
    iget-object v5, p0, Lc8/Kzk;->this$0:Lc8/Nzk;

    invoke-static {v5}, Lc8/Nzk;->access$200(Lc8/Nzk;)Lcom/youku/phone/skin/data/CMSSkinData;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iput-object v2, v5, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->bottom:Ljava/util/List;

    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remain 5 tags , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lc8/Kzk;->this$0:Lc8/Nzk;

    invoke-static {v6}, Lc8/Nzk;->access$200(Lc8/Nzk;)Lcom/youku/phone/skin/data/CMSSkinData;

    move-result-object v6

    iget-object v6, v6, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v6, v6, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->bottom:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .end local v1    # "index":I
    .end local v2    # "remainList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/phone/skin/data/CMSSkinData$TabTag;>;"
    :cond_2
    iget-object v5, p0, Lc8/Kzk;->this$0:Lc8/Nzk;

    invoke-static {v5}, Lc8/Nzk;->access$200(Lc8/Nzk;)Lcom/youku/phone/skin/data/CMSSkinData;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lc8/Kzk;->this$0:Lc8/Nzk;

    invoke-static {v5}, Lc8/Nzk;->access$200(Lc8/Nzk;)Lcom/youku/phone/skin/data/CMSSkinData;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lc8/Kzk;->this$0:Lc8/Nzk;

    invoke-static {v5}, Lc8/Nzk;->access$200(Lc8/Nzk;)Lcom/youku/phone/skin/data/CMSSkinData;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v5, v5, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->bottomBackground:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 143
    const/4 v5, 0x1

    sput-boolean v5, Lc8/Nzk;->isEntireChanged:Z

    .line 146
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "skin data is entire changed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lc8/Nzk;->isEntireChanged:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    iget-object v5, p0, Lc8/Kzk;->this$0:Lc8/Nzk;

    iget-object v6, p0, Lc8/Kzk;->this$0:Lc8/Nzk;

    invoke-static {v6}, Lc8/Nzk;->access$200(Lc8/Nzk;)Lcom/youku/phone/skin/data/CMSSkinData;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/Nzk;->access$300(Lc8/Nzk;Lcom/youku/phone/skin/data/CMSSkinData;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 158
    :cond_4
    :goto_1
    return-void

    .line 152
    :cond_5
    iget-object v5, p0, Lc8/Kzk;->this$0:Lc8/Nzk;

    iget-object v6, p0, Lc8/Kzk;->this$0:Lc8/Nzk;

    invoke-static {v6}, Lc8/Nzk;->access$200(Lc8/Nzk;)Lcom/youku/phone/skin/data/CMSSkinData;

    move-result-object v6

    iget-object v6, v6, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    iget-object v6, v6, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->bottom:Ljava/util/List;

    iget-object v7, p0, Lc8/Kzk;->this$0:Lc8/Nzk;

    invoke-static {v7}, Lc8/Nzk;->access$200(Lc8/Nzk;)Lcom/youku/phone/skin/data/CMSSkinData;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lc8/Nzk;->access$400(Lc8/Nzk;Ljava/util/List;Lcom/youku/phone/skin/data/CMSSkinData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 153
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
