.class public Lcom/youku/phone/detail/cms/dto/DirectorsDTO;
.super Lcom/youku/phone/detail/cms/dto/BaseDTO;
.source "DirectorsDTO.java"


# instance fields
.field public name:Ljava/lang/String;

.field public photo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/youku/phone/detail/cms/dto/BaseDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/DirectorsDTO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/DirectorsDTO;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/DirectorsDTO;->name:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setPhoto(Ljava/lang/String;)V
    .locals 0
    .param p1, "photo"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/DirectorsDTO;->photo:Ljava/lang/String;

    .line 28
    return-void
.end method
