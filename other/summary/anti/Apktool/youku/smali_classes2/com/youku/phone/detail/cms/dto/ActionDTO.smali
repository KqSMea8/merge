.class public Lcom/youku/phone/detail/cms/dto/ActionDTO;
.super Lcom/youku/phone/detail/cms/dto/BaseDTO;
.source "ActionDTO.java"


# instance fields
.field public arg1:Ljava/lang/String;

.field protected className:Ljava/lang/String;

.field public extra:Lcom/youku/phone/detail/cms/dto/extra/ExtraDTO;

.field public scm:Ljava/lang/String;

.field public spm:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public trackInfo:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/youku/phone/detail/cms/dto/BaseDTO;-><init>()V

    .line 28
    const-string/jumbo v0, "com.youku.haibao.client.dto.ActionDTO"

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/ActionDTO;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArg1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ActionDTO;->arg1:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Lcom/youku/phone/detail/cms/dto/extra/ExtraDTO;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ActionDTO;->extra:Lcom/youku/phone/detail/cms/dto/extra/ExtraDTO;

    return-object v0
.end method

.method public getScm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ActionDTO;->scm:Ljava/lang/String;

    return-object v0
.end method

.method public getSpm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ActionDTO;->spm:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ActionDTO;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ActionDTO;->trackInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ActionDTO;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setArg1(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ActionDTO;->arg1:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setExtra(Lcom/youku/phone/detail/cms/dto/extra/ExtraDTO;)V
    .locals 0
    .param p1, "extra"    # Lcom/youku/phone/detail/cms/dto/extra/ExtraDTO;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ActionDTO;->extra:Lcom/youku/phone/detail/cms/dto/extra/ExtraDTO;

    .line 76
    return-void
.end method

.method public setScm(Ljava/lang/String;)V
    .locals 0
    .param p1, "scm"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ActionDTO;->scm:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setSpm(Ljava/lang/String;)V
    .locals 0
    .param p1, "spm"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ActionDTO;->spm:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ActionDTO;->text:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setTrackInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackInfo"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ActionDTO;->trackInfo:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ActionDTO;->type:Ljava/lang/String;

    .line 68
    return-void
.end method
