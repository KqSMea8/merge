.class public Lcom/youku/phone/detail/data/TopicInfo;
.super Ljava/lang/Object;
.source "TopicInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public content_id:Ljava/lang/String;

.field public op_title:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public topicId:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public url_open_way:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/youku/phone/detail/data/TopicInfo;->topicId:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/youku/phone/detail/data/TopicInfo;->title:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/youku/phone/detail/data/TopicInfo;->url:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/youku/phone/detail/data/TopicInfo;->op_title:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/youku/phone/detail/data/TopicInfo;->url_open_way:Ljava/lang/String;

    return-void
.end method
