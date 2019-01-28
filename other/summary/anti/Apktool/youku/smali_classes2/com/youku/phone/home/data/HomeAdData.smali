.class public Lcom/youku/phone/home/data/HomeAdData;
.super Ljava/lang/Object;
.source "HomeAdData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private advertisement_type:Ljava/lang/String;

.field private count:I

.field private default_show_image_url:Ljava/lang/String;

.field private default_show_start_image_url:Ljava/lang/String;

.field private default_static_show_image_url:Ljava/lang/String;

.field private detect_play_btn_count:Ljava/lang/String;

.field private end_check_url:Ljava/lang/String;

.field private first_start_check_url:Ljava/lang/String;

.field private h5_url:Ljava/lang/String;

.field private homeAdvertCloseDelay:I

.field private isAppleSpecialVrVideo:Z

.field private is_native:I

.field private is_wifi:I

.field private jump_check_url:Ljava/lang/String;

.field private loadingFailSeconds:I

.field private overtime_check_url:Ljava/lang/String;

.field private replay_check_url:Ljava/lang/String;

.field private second_start_check_url:Ljava/lang/String;

.field private staticImage:Ljava/lang/String;

.field private staticImageSeconds:I

.field private title_image:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private video_id:Ljava/lang/String;

.field private video_image:Ljava/lang/String;

.field private video_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdvertisement_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/youku/phone/home/data/HomeAdData;->advertisement_type:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/youku/phone/home/data/HomeAdData;->count:I

    return v0
.end method

.method public getDefault_show_image_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/youku/phone/home/data/HomeAdData;->default_show_image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDefault_show_start_image_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/youku/phone/home/data/HomeAdData;->default_show_start_image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDefault_static_show_image_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/youku/phone/home/data/HomeAdData;->default_static_show_image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDetect_play_btn_count()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/youku/phone/home/data/HomeAdData;->detect_play_btn_count:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd_check_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/youku/phone/home/data/HomeAdData;->end_check_url:Ljava/lang/String;

    return-object v0
.end method

.method public getFirst_start_check_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/youku/phone/home/data/HomeAdData;->first_start_check_url:Ljava/lang/String;

    return-object v0
.end method

.method public getH5_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/youku/phone/home/data/HomeAdData;->h5_url:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeAdvertCloseDelay()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/youku/phone/home/data/HomeAdData;->homeAdvertCloseDelay:I

    return v0
.end method

.method public getIs_native()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/youku/phone/home/data/HomeAdData;->is_native:I

    return v0
.end method

.method public getIs_wifi()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/youku/phone/home/data/HomeAdData;->is_wifi:I

    return v0
.end method

.method public getJump_check_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/youku/phone/home/data/HomeAdData;->jump_check_url:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadingFailSeconds()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/youku/phone/home/data/HomeAdData;->loadingFailSeconds:I

    return v0
.end method

.method public getOvertime_check_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/youku/phone/home/data/HomeAdData;->overtime_check_url:Ljava/lang/String;

    return-object v0
.end method

.method public getReplay_check_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/youku/phone/home/data/HomeAdData;->replay_check_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSecond_start_check_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/youku/phone/home/data/HomeAdData;->second_start_check_url:Ljava/lang/String;

    return-object v0
.end method

.method public getStaticImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/youku/phone/home/data/HomeAdData;->staticImage:Ljava/lang/String;

    return-object v0
.end method

.method public getStaticImageSeconds()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/youku/phone/home/data/HomeAdData;->staticImageSeconds:I

    return v0
.end method

.method public getTitle_image()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/youku/phone/home/data/HomeAdData;->title_image:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/youku/phone/home/data/HomeAdData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/youku/phone/home/data/HomeAdData;->video_id:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_image()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/youku/phone/home/data/HomeAdData;->video_image:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/youku/phone/home/data/HomeAdData;->video_type:Ljava/lang/String;

    return-object v0
.end method

.method public isAppleSpecialVrVideo()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/youku/phone/home/data/HomeAdData;->isAppleSpecialVrVideo:Z

    return v0
.end method

.method public setAdvertisement_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "advertisement_type"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/youku/phone/home/data/HomeAdData;->advertisement_type:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setAppleSpecialVrVideo(Z)V
    .locals 0
    .param p1, "appleSpecialVrVideo"    # Z

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/youku/phone/home/data/HomeAdData;->isAppleSpecialVrVideo:Z

    .line 266
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/youku/phone/home/data/HomeAdData;->count:I

    .line 146
    return-void
.end method

.method public setDefault_show_image_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "default_show_image_url"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/youku/phone/home/data/HomeAdData;->default_show_image_url:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setDefault_show_start_image_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "default_show_start_image_url"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/youku/phone/home/data/HomeAdData;->default_show_start_image_url:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setDefault_static_show_image_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "default_static_show_image_url"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/youku/phone/home/data/HomeAdData;->default_static_show_image_url:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setDetect_play_btn_count(Ljava/lang/String;)V
    .locals 0
    .param p1, "detect_play_btn_count"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/youku/phone/home/data/HomeAdData;->detect_play_btn_count:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setEnd_check_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "end_check_url"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/youku/phone/home/data/HomeAdData;->end_check_url:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setFirst_start_check_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "first_start_check_url"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/youku/phone/home/data/HomeAdData;->first_start_check_url:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setH5_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "h5_url"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/youku/phone/home/data/HomeAdData;->h5_url:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setHomeAdvertCloseDelay(I)V
    .locals 0
    .param p1, "homeAdvertCloseDelay"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/youku/phone/home/data/HomeAdData;->homeAdvertCloseDelay:I

    .line 70
    return-void
.end method

.method public setIs_native(I)V
    .locals 0
    .param p1, "is_native"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/youku/phone/home/data/HomeAdData;->is_native:I

    .line 126
    return-void
.end method

.method public setIs_wifi(I)V
    .locals 0
    .param p1, "is_wifi"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/youku/phone/home/data/HomeAdData;->is_wifi:I

    .line 90
    return-void
.end method

.method public setJump_check_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "jump_check_url"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/youku/phone/home/data/HomeAdData;->jump_check_url:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setLoadingFailSeconds(I)V
    .locals 0
    .param p1, "loadingFailSeconds"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/youku/phone/home/data/HomeAdData;->loadingFailSeconds:I

    .line 242
    return-void
.end method

.method public setOvertime_check_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "overtime_check_url"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/youku/phone/home/data/HomeAdData;->overtime_check_url:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setReplay_check_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "replay_check_url"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/youku/phone/home/data/HomeAdData;->replay_check_url:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setSecond_start_check_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "second_start_check_url"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/youku/phone/home/data/HomeAdData;->second_start_check_url:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setStaticImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "staticImage"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/youku/phone/home/data/HomeAdData;->staticImage:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setStaticImageSeconds(I)V
    .locals 0
    .param p1, "staticImageSeconds"    # I

    .prologue
    .line 249
    iput p1, p0, Lcom/youku/phone/home/data/HomeAdData;->staticImageSeconds:I

    .line 250
    return-void
.end method

.method public setTitle_image(Ljava/lang/String;)V
    .locals 0
    .param p1, "title_image"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/youku/phone/home/data/HomeAdData;->title_image:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/youku/phone/home/data/HomeAdData;->url:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setVideo_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "video_id"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/youku/phone/home/data/HomeAdData;->video_id:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setVideo_image(Ljava/lang/String;)V
    .locals 0
    .param p1, "video_image"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/youku/phone/home/data/HomeAdData;->video_image:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setVideo_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "video_type"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/youku/phone/home/data/HomeAdData;->video_type:Ljava/lang/String;

    .line 194
    return-void
.end method
