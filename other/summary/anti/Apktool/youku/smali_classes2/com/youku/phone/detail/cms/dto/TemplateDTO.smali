.class public Lcom/youku/phone/detail/cms/dto/TemplateDTO;
.super Lcom/youku/phone/detail/cms/dto/BaseDTO;
.source "TemplateDTO.java"


# instance fields
.field private dynamic:Z

.field private priorityTag:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/youku/phone/detail/cms/dto/BaseDTO;-><init>()V

    .line 8
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/TemplateDTO;->tag:Ljava/lang/String;

    .line 9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/TemplateDTO;->priorityTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPriorityTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/TemplateDTO;->priorityTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/TemplateDTO;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/TemplateDTO;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/TemplateDTO;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isDynamic()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/youku/phone/detail/cms/dto/TemplateDTO;->dynamic:Z

    return v0
.end method

.method public setDynamic(Z)V
    .locals 0
    .param p1, "dynamic"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/youku/phone/detail/cms/dto/TemplateDTO;->dynamic:Z

    .line 47
    return-void
.end method

.method public setPriorityTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "priorityTag"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/TemplateDTO;->priorityTag:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/TemplateDTO;->tag:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/TemplateDTO;->url:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/TemplateDTO;->version:Ljava/lang/String;

    .line 31
    return-void
.end method
