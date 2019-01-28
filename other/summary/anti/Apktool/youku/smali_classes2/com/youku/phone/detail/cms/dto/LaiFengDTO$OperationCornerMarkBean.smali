.class public Lcom/youku/phone/detail/cms/dto/LaiFengDTO$OperationCornerMarkBean;
.super Ljava/lang/Object;
.source "LaiFengDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/cms/dto/LaiFengDTO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperationCornerMarkBean"
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
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBg_color()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO$OperationCornerMarkBean;->bg_color:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO$OperationCornerMarkBean;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getText_color()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO$OperationCornerMarkBean;->text_color:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO$OperationCornerMarkBean;->type:I

    return v0
.end method

.method public setBg_color(Ljava/lang/String;)V
    .locals 0
    .param p1, "bg_color"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO$OperationCornerMarkBean;->bg_color:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO$OperationCornerMarkBean;->desc:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setText_color(Ljava/lang/String;)V
    .locals 0
    .param p1, "text_color"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO$OperationCornerMarkBean;->text_color:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 199
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO$OperationCornerMarkBean;->type:I

    .line 200
    return-void
.end method
