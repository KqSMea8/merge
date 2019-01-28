.class public Lcom/youku/vo/ChannelTabInfo;
.super Ljava/lang/Object;
.source "ChannelTabInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/vo/ChannelTabInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISPLAY_TYPE_LIST:I = 0x0

.field public static final DISPLAY_TYPE_SUDOKU:I = 0x1

.field public static final HIGHLIGHT_NO:I = 0x0

.field public static final HIGHLIGHT_YES:I = 0x1

.field public static final IMAGE_STATE_HORIZONTAL:I = 0x0

.field public static final IMAGE_STATE_VERTICAL:I = 0x1

.field public static final SUB_CHANNEL_TYPE_ALL:I = 0x4

.field public static final SUB_CHANNEL_TYPE_EDITABLE_BOX:I = 0x1

.field public static final SUB_CHANNEL_TYPE_EDITABLE_VIDEO_LIST:I = 0x2

.field public static final SUB_CHANNEL_TYPE_FILTER:I = 0x3

.field public static final SUB_CHANNEL_TYPE_H5:I = 0x5

.field public static final SUB_CHANNEL_TYPE_RECOMMEND:I = 0x3ec

.field private static final serialVersionUID:J = -0x18f9e25b616a1f81L


# instance fields
.field private cid:Ljava/lang/String;

.field private ctitle:Ljava/lang/String;

.field private display_type:I

.field private filter:Ljava/lang/String;

.field private firstChannelName:Ljava/lang/String;

.field private h5_url:Ljava/lang/String;

.field private highlight:I

.field private image_state:I

.field private ob:Ljava/lang/String;

.field private sub_channel_id:I

.field private sub_channel_type:I

.field private sub_tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/ChannelTabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sudoku_image:Ljava/lang/String;

.field private taopiaopiao:I

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lc8/uVo;

    invoke-direct {v0}, Lc8/uVo;-><init>()V

    sput-object v0, Lcom/youku/vo/ChannelTabInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->cid:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->ctitle:Ljava/lang/String;

    .line 42
    iput v1, p0, Lcom/youku/vo/ChannelTabInfo;->sub_channel_id:I

    .line 47
    iput v1, p0, Lcom/youku/vo/ChannelTabInfo;->sub_channel_type:I

    .line 52
    iput v1, p0, Lcom/youku/vo/ChannelTabInfo;->image_state:I

    .line 57
    iput v1, p0, Lcom/youku/vo/ChannelTabInfo;->display_type:I

    .line 62
    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->title:Ljava/lang/String;

    .line 67
    iput v1, p0, Lcom/youku/vo/ChannelTabInfo;->highlight:I

    .line 72
    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->filter:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->ob:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->sudoku_image:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->firstChannelName:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->sub_tabs:Ljava/util/ArrayList;

    .line 84
    iput v1, p0, Lcom/youku/vo/ChannelTabInfo;->taopiaopiao:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->cid:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->ctitle:Ljava/lang/String;

    .line 42
    iput v1, p0, Lcom/youku/vo/ChannelTabInfo;->sub_channel_id:I

    .line 47
    iput v1, p0, Lcom/youku/vo/ChannelTabInfo;->sub_channel_type:I

    .line 52
    iput v1, p0, Lcom/youku/vo/ChannelTabInfo;->image_state:I

    .line 57
    iput v1, p0, Lcom/youku/vo/ChannelTabInfo;->display_type:I

    .line 62
    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->title:Ljava/lang/String;

    .line 67
    iput v1, p0, Lcom/youku/vo/ChannelTabInfo;->highlight:I

    .line 72
    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->filter:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->ob:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->sudoku_image:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->firstChannelName:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->sub_tabs:Ljava/util/ArrayList;

    .line 84
    iput v1, p0, Lcom/youku/vo/ChannelTabInfo;->taopiaopiao:I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/vo/ChannelTabInfo;->sub_channel_id:I

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/vo/ChannelTabInfo;->sub_channel_type:I

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/vo/ChannelTabInfo;->image_state:I

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/vo/ChannelTabInfo;->display_type:I

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->title:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/vo/ChannelTabInfo;->highlight:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->filter:Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->ob:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->sudoku_image:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->firstChannelName:Ljava/lang/String;

    .line 258
    const-class v0, Lcom/youku/vo/ChannelTabInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->sub_tabs:Ljava/util/ArrayList;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->h5_url:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/vo/ChannelTabInfo;->taopiaopiao:I

    .line 262
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getCtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->ctitle:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay_type()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/youku/vo/ChannelTabInfo;->display_type:I

    return v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->filter:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstChannelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->firstChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public getH5_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->h5_url:Ljava/lang/String;

    return-object v0
.end method

.method public getHighlight()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/youku/vo/ChannelTabInfo;->highlight:I

    return v0
.end method

.method public getImage_state()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/youku/vo/ChannelTabInfo;->image_state:I

    return v0
.end method

.method public getOb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->ob:Ljava/lang/String;

    return-object v0
.end method

.method public getSub_channel_id()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/youku/vo/ChannelTabInfo;->sub_channel_id:I

    return v0
.end method

.method public getSub_channel_type()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/youku/vo/ChannelTabInfo;->sub_channel_type:I

    return v0
.end method

.method public getSub_tabs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/ChannelTabInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->sub_tabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSudoku_image()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->sudoku_image:Ljava/lang/String;

    return-object v0
.end method

.method public getTaopiaopiao()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/youku/vo/ChannelTabInfo;->taopiaopiao:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isHighlight()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 191
    iget v1, p0, Lcom/youku/vo/ChannelTabInfo;->highlight:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImageVertical()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 199
    iget v1, p0, Lcom/youku/vo/ChannelTabInfo;->image_state:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSudoku()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 195
    iget v1, p0, Lcom/youku/vo/ChannelTabInfo;->display_type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/youku/vo/ChannelTabInfo;->cid:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setCtitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "ctitle"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/youku/vo/ChannelTabInfo;->ctitle:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setDisplay_type(I)V
    .locals 0
    .param p1, "display_type"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/youku/vo/ChannelTabInfo;->display_type:I

    .line 140
    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 0
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/youku/vo/ChannelTabInfo;->filter:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setFirstChannelName(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstChannelName"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/youku/vo/ChannelTabInfo;->firstChannelName:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setH5_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "h5_url"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/youku/vo/ChannelTabInfo;->h5_url:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setHighlight(I)V
    .locals 0
    .param p1, "highlight"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/youku/vo/ChannelTabInfo;->highlight:I

    .line 156
    return-void
.end method

.method public setImage_state(I)V
    .locals 0
    .param p1, "image_state"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/youku/vo/ChannelTabInfo;->image_state:I

    .line 132
    return-void
.end method

.method public setOb(Ljava/lang/String;)V
    .locals 0
    .param p1, "ob"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/youku/vo/ChannelTabInfo;->ob:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setSub_channel_id(I)V
    .locals 0
    .param p1, "sub_channel_id"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/youku/vo/ChannelTabInfo;->sub_channel_id:I

    .line 116
    return-void
.end method

.method public setSub_channel_type(I)V
    .locals 0
    .param p1, "sub_channel_type"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/youku/vo/ChannelTabInfo;->sub_channel_type:I

    .line 124
    return-void
.end method

.method public setSub_tabs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/ChannelTabInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "sub_tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/ChannelTabInfo;>;"
    iput-object p1, p0, Lcom/youku/vo/ChannelTabInfo;->sub_tabs:Ljava/util/ArrayList;

    .line 188
    return-void
.end method

.method public setSudoku_image(Ljava/lang/String;)V
    .locals 0
    .param p1, "sudoku_image"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/youku/vo/ChannelTabInfo;->sudoku_image:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setTaopiaopiao(I)V
    .locals 0
    .param p1, "taopiaopiao"    # I

    .prologue
    .line 215
    iput p1, p0, Lcom/youku/vo/ChannelTabInfo;->taopiaopiao:I

    .line 216
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/youku/vo/ChannelTabInfo;->title:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ChannelTabInfo [sub_channel_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/vo/ChannelTabInfo;->sub_channel_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sub_channel_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/vo/ChannelTabInfo;->sub_channel_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", image_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/vo/ChannelTabInfo;->image_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", display_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/vo/ChannelTabInfo;->display_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/ChannelTabInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", highlight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/vo/ChannelTabInfo;->highlight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/ChannelTabInfo;->filter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ob="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/ChannelTabInfo;->ob:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sudoku_image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/ChannelTabInfo;->sudoku_image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", firstChannelName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/ChannelTabInfo;->firstChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sub_tabs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/ChannelTabInfo;->sub_tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 230
    iget v0, p0, Lcom/youku/vo/ChannelTabInfo;->sub_channel_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget v0, p0, Lcom/youku/vo/ChannelTabInfo;->sub_channel_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget v0, p0, Lcom/youku/vo/ChannelTabInfo;->image_state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget v0, p0, Lcom/youku/vo/ChannelTabInfo;->display_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget v0, p0, Lcom/youku/vo/ChannelTabInfo;->highlight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->filter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->ob:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->sudoku_image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->firstChannelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->sub_tabs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 241
    iget-object v0, p0, Lcom/youku/vo/ChannelTabInfo;->h5_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget v0, p0, Lcom/youku/vo/ChannelTabInfo;->taopiaopiao:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    return-void
.end method
