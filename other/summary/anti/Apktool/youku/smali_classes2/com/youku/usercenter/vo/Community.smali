.class public Lcom/youku/usercenter/vo/Community;
.super Ljava/lang/Object;
.source "Community.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public banner:Ljava/lang/String;

.field public commentNum:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public isSelected:Z

.field public joinNum:Ljava/lang/String;

.field public topicId:Ljava/lang/String;

.field public topicName:Ljava/lang/String;

.field public videoNum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "topicName"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/youku/usercenter/vo/Community;->topicName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "topicId"    # Ljava/lang/String;
    .param p2, "topicName"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/youku/usercenter/vo/Community;->topicId:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/youku/usercenter/vo/Community;->topicName:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/usercenter/vo/Community;->topicName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/youku/usercenter/vo/Community;->isSelected:Z

    return v0
.end method

.method public setIsSelected(Z)V
    .locals 0
    .param p1, "isSelected"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/youku/usercenter/vo/Community;->isSelected:Z

    .line 51
    return-void
.end method
