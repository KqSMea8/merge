.class public Lcom/youku/phone/detail/cms/dto/BaseCellDTO$OperationCornerMark;
.super Ljava/lang/Object;
.source "BaseCellDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/cms/dto/BaseCellDTO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperationCornerMark"
.end annotation


# instance fields
.field private bg_color:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private text_color:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBg_color()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO$OperationCornerMark;->bg_color:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO$OperationCornerMark;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getText_color()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO$OperationCornerMark;->text_color:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO$OperationCornerMark;->type:I

    return v0
.end method

.method public setBg_color(Ljava/lang/String;)V
    .locals 0
    .param p1, "bg_color"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO$OperationCornerMark;->bg_color:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO$OperationCornerMark;->desc:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setText_color(Ljava/lang/String;)V
    .locals 0
    .param p1, "text_color"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO$OperationCornerMark;->text_color:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/BaseCellDTO$OperationCornerMark;->type:I

    .line 130
    return-void
.end method
