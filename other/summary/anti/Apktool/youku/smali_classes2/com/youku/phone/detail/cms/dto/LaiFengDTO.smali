.class public Lcom/youku/phone/detail/cms/dto/LaiFengDTO;
.super Ljava/lang/Object;
.source "LaiFengDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/cms/dto/LaiFengDTO$OperationCornerMarkBean;
    }
.end annotation


# instance fields
.field private color_tag:I

.field private image:Ljava/lang/String;

.field private is_only_tudou_play:I

.field private is_reputation:I

.field private is_vv:I

.field private operation_corner_mark:Lcom/youku/phone/detail/cms/dto/LaiFengDTO$OperationCornerMarkBean;

.field private paid:I

.field private second_title_in_back:Ljava/lang/String;

.field private subtitle:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private summary_location:I

.field private tid:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    return-void
.end method


# virtual methods
.method public getColor_tag()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->color_tag:I

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_only_tudou_play()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->is_only_tudou_play:I

    return v0
.end method

.method public getIs_reputation()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->is_reputation:I

    return v0
.end method

.method public getIs_vv()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->is_vv:I

    return v0
.end method

.method public getOperation_corner_mark()Lcom/youku/phone/detail/cms/dto/LaiFengDTO$OperationCornerMarkBean;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->operation_corner_mark:Lcom/youku/phone/detail/cms/dto/LaiFengDTO$OperationCornerMarkBean;

    return-object v0
.end method

.method public getPaid()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->paid:I

    return v0
.end method

.method public getSecond_title_in_back()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->second_title_in_back:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary_location()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->summary_location:I

    return v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setColor_tag(I)V
    .locals 0
    .param p1, "color_tag"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->color_tag:I

    .line 107
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->image:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setIs_only_tudou_play(I)V
    .locals 0
    .param p1, "is_only_tudou_play"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->is_only_tudou_play:I

    .line 131
    return-void
.end method

.method public setIs_reputation(I)V
    .locals 0
    .param p1, "is_reputation"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->is_reputation:I

    .line 123
    return-void
.end method

.method public setIs_vv(I)V
    .locals 0
    .param p1, "is_vv"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->is_vv:I

    .line 155
    return-void
.end method

.method public setOperation_corner_mark(Lcom/youku/phone/detail/cms/dto/LaiFengDTO$OperationCornerMarkBean;)V
    .locals 0
    .param p1, "operation_corner_mark"    # Lcom/youku/phone/detail/cms/dto/LaiFengDTO$OperationCornerMarkBean;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->operation_corner_mark:Lcom/youku/phone/detail/cms/dto/LaiFengDTO$OperationCornerMarkBean;

    .line 163
    return-void
.end method

.method public setPaid(I)V
    .locals 0
    .param p1, "paid"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->paid:I

    .line 91
    return-void
.end method

.method public setSecond_title_in_back(Ljava/lang/String;)V
    .locals 0
    .param p1, "second_title_in_back"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->second_title_in_back:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->subtitle:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->summary:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setSummary_location(I)V
    .locals 0
    .param p1, "summary_location"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->summary_location:I

    .line 115
    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0
    .param p1, "tid"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->tid:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->title:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->type:I

    .line 147
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/LaiFengDTO;->url:Ljava/lang/String;

    .line 67
    return-void
.end method
