.class public Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;
.super Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
.source "SubTagsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus$Tag;
    }
.end annotation


# instance fields
.field private pushId:Ljava/lang/String;

.field private tagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus$Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getPushId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;->pushId:Ljava/lang/String;

    return-object v0
.end method

.method public getTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus$Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;->tagList:Ljava/util/List;

    return-object v0
.end method

.method public parseValueData(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 59
    const-string/jumbo v5, "pushId"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 60
    const-string/jumbo v5, "pushId"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;->setPushId(Ljava/lang/String;)V

    .line 62
    :cond_0
    const-string/jumbo v5, "tags"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 63
    const-string/jumbo v5, "tags"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 64
    .local v4, "tagsArray":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v3, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus$Tag;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 66
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 67
    .local v2, "tagObj":Lorg/json/JSONObject;
    new-instance v1, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus$Tag;

    invoke-direct {v1, p0}, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus$Tag;-><init>(Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;)V

    .line 68
    .local v1, "tag":Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus$Tag;
    const-string/jumbo v5, "tagId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 69
    const-string/jumbo v5, "tagId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v5}, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus$Tag;->access$002(Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus$Tag;I)I

    .line 71
    :cond_1
    const-string/jumbo v5, "tagName"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 72
    const-string/jumbo v5, "tagName"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus$Tag;->access$102(Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus$Tag;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "tag":Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus$Tag;
    .end local v2    # "tagObj":Lorg/json/JSONObject;
    :cond_3
    const-string/jumbo v5, "BasicPushStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tags "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, v3}, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;->setTagList(Ljava/util/List;)V

    .line 79
    .end local v0    # "i":I
    .end local v3    # "tags":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus$Tag;>;"
    .end local v4    # "tagsArray":Lorg/json/JSONArray;
    :cond_4
    return-void
.end method

.method public setPushId(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushId"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;->pushId:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setTagList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus$Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "tagList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus$Tag;>;"
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;->tagList:Ljava/util/List;

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " SubTagsStatus{pushId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;->pushId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tagList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;->tagList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
