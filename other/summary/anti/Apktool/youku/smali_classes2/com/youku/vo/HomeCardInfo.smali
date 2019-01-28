.class public Lcom/youku/vo/HomeCardInfo;
.super Ljava/lang/Object;
.source "HomeCardInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BOX_TYPE_AD:I = 0x2c

.field public static final BOX_TYPE_BANNER:I = 0x8

.field public static final BOX_TYPE_BIGDATA:I = 0x2e

.field public static final BOX_TYPE_CONTINUE_WATCHING:I = 0x35

.field public static final BOX_TYPE_GAME:I = 0x4

.field public static final BOX_TYPE_H5:I = 0x7

.field public static final BOX_TYPE_LAIFENG:I = 0x19

.field public static final BOX_TYPE_LIVE:I = 0x33

.field public static final BOX_TYPE_MESSAGE:I = 0x38

.field public static final BOX_TYPE_NORMAL:I = 0x1

.field public static final BOX_TYPE_PLAYLIST:I = 0x36

.field public static final BOX_TYPE_RECOMMEND:I = 0x5

.field public static final BOX_TYPE_SLIDER:I = 0x2

.field public static final BOX_TYPE_STAR:I = 0x34

.field public static final BOX_TYPE_TEXT_LINK:I = 0xc

.field public static final BOX_TYPE_VIDEO_LIST:I = 0x9

.field public static final CARD_TYPE_2_2:I = 0x4

.field public static final CARD_TYPE_4_0:I = 0x2

.field public static final CARD_TYPE_8_0:I = 0x3

.field public static final CARD_TYPE_GAME:I = 0x0

.field public static final CARD_TYPE_SLIDER:I = 0x1

.field public static final COLUMN_ID_GAME:I = 0x334

.field public static final IS_YOUKU_CHANNEL_YES:I = 0x1

.field public static final JUMP_CONTENT_TYPE_PLAYLIST:Ljava/lang/String; = "playlist"

.field public static final JUMP_CONTENT_TYPE_SHOW:Ljava/lang/String; = "show"

.field public static final JUMP_CONTENT_TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final JUMP_CONTENT_TYPE_VIDEO_LIST:Ljava/lang/String; = "video_list"

.field public static final JUMP_TYPE_CHANNEL:Ljava/lang/String; = "jump_to_channel"

.field public static final JUMP_TYPE_CHANNEL_PAGE:Ljava/lang/String; = "jump_to_channel_page"

.field public static final JUMP_TYPE_GAME:Ljava/lang/String; = "jump_to_game"

.field public static final JUMP_TYPE_GAME_LIST:Ljava/lang/String; = "jump_to_game_list"

.field public static final JUMP_TYPE_GROUP:Ljava/lang/String; = "jump_to_group"

.field public static final JUMP_TYPE_HOTWORD:Ljava/lang/String; = "jump_to_hotword"

.field public static final JUMP_TYPE_LAIFENG_LIVEHOUSE:Ljava/lang/String; = "jump_to_live_house"

.field public static final JUMP_TYPE_LAIFENG_SHOWPLACE:Ljava/lang/String; = "jump_to_laifeng_show"

.field public static final JUMP_TYPE_LAIFENG_SQUARE:Ljava/lang/String; = "jump_to_laifeng_square"

.field public static final JUMP_TYPE_LIVE:Ljava/lang/String; = "jump_to_live_broadcast"

.field public static final JUMP_TYPE_NO:Ljava/lang/String; = "no_jump"

.field public static final JUMP_TYPE_RECOMMEND:Ljava/lang/String; = "jump_to_recommand"

.field public static final JUMP_TYPE_SUBJECT:Ljava/lang/String; = "jump_to_subject"

.field public static final JUMP_TYPE_SUB_CHANNEL:Ljava/lang/String; = "jump_to_sub_channel"

.field public static final JUMP_TYPE_TAO_PIAO_PIAO:Ljava/lang/String; = "jump_to_taopiaopiao_h5"

.field public static final JUMP_TYPE_TOPIC:Ljava/lang/String; = "jump_to_topic"

.field public static final JUMP_TYPE_TOPIC_LIST:Ljava/lang/String; = "jump_to_topic_list"

.field public static final JUMP_TYPE_URL:Ljava/lang/String; = "jump_to_url"

.field public static final JUMP_TYPE_USER:Ljava/lang/String; = "jump_to_user"

.field public static final JUMP_TYPE_VIDEO_PLAY:Ljava/lang/String; = "jump_to_video"

.field private static final serialVersionUID:J = -0x7d4c718865e5a2d0L


# instance fields
.field public advertisement_id:I

.field public algInfo:Ljava/lang/String;

.field public banner_broadcast_image:Ljava/lang/String;

.field public banner_content_id:Ljava/lang/String;

.field public banner_content_type:Ljava/lang/String;

.field public banner_cps_id:Ljava/lang/String;

.field public banner_first_episode_video_id:Ljava/lang/String;

.field public banner_id:I

.field public banner_image:Ljava/lang/String;

.field public banner_jump_id:Ljava/lang/String;

.field public banner_jump_type:Ljava/lang/String;

.field public banner_title:Ljava/lang/String;

.field public banner_url:Ljava/lang/String;

.field public bg_img:Ljava/lang/String;

.field public box_type:I

.field public card_type:I

.field public cid:Ljava/lang/String;

.field public column_id:I

.field public dct:I

.field public drawerId:Ljava/lang/String;

.field public exchange:Z

.field public expansion_count:I

.field public fbReason:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/HomeRecommandCardsInfo$CardEntity$FbReasonEntity;",
            ">;"
        }
    .end annotation
.end field

.field public gallery_pos:I

.field public h5_height:Ljava/lang/String;

.field public h5_url:Ljava/lang/String;

.field public hasSubPage:Z

.field public homeExtendedAreaInfo:Lc8/DVo;

.field public homeJumpInfo:Lcom/youku/vo/HomeJumpInfo;

.field public homeTagInfo:Lcom/youku/vo/HomeTagInfo;

.field public homeTagInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HomeTagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public homeTailInfo:Lcom/youku/vo/HomeTagInfo;

.field public homeTailTagInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HomeTagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public homeVideoInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HomeVideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public image_link:Ljava/lang/String;

.field public image_state:Ljava/lang/String;

.field public intro:Ljava/lang/String;

.field public is2lineTitle:Z

.field public isCanGoTop:Z

.field public isHasExtendedArea:Z

.field public isHasHeader:Z

.field public isHasPoster:Z

.field public isHasTail:Z

.field public isHiddenHeader:Z

.field public isPGCCard:Z

.field public isPortaitPic:Z

.field public isRecommandedCard:Z

.field public isSlided:Z

.field public is_advertisement_banner:Z

.field public is_for_a_change:Z

.field public is_for_a_expansion:Z

.field public is_for_d_area_tag:Z

.field public is_youku_channel:I

.field public layout:I

.field public live_sdk_type:I

.field public mChannelListTag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelListTag;",
            ">;"
        }
    .end annotation
.end field

.field public navigation_image:Ljava/lang/String;

.field public negitive_feedback:Landroid/view/View$OnClickListener;

.field public normal_video_count:I

.field public pos:I

.field public posterInfo:Lcom/youku/vo/HomeVideoInfo;

.field public recReason:Ljava/lang/String;

.field public rec_box_type:Ljava/lang/String;

.field public recommandCardPos:I

.field public req_id:Ljava/lang/String;

.field public sam:Ljava/lang/String;

.field public scg_id:Ljava/lang/String;

.field public sliders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HomeVideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field public tag_word:Ljava/lang/String;

.field public testId:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I

.field public under_sliders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HomeVideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field public url_open_way:I

.field public video_list_id:I

.field public video_list_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->sliders:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->under_sliders:Ljava/util/ArrayList;

    .line 85
    iput-object v2, p0, Lcom/youku/vo/HomeCardInfo;->homeJumpInfo:Lcom/youku/vo/HomeJumpInfo;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfos:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->homeTailTagInfos:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->homeVideoInfos:Ljava/util/ArrayList;

    .line 93
    iput-object v2, p0, Lcom/youku/vo/HomeCardInfo;->posterInfo:Lcom/youku/vo/HomeVideoInfo;

    .line 95
    iput-object v2, p0, Lcom/youku/vo/HomeCardInfo;->homeTailInfo:Lcom/youku/vo/HomeTagInfo;

    .line 97
    iput-boolean v1, p0, Lcom/youku/vo/HomeCardInfo;->is_for_d_area_tag:Z

    .line 99
    iput-object v2, p0, Lcom/youku/vo/HomeCardInfo;->homeExtendedAreaInfo:Lc8/DVo;

    .line 103
    iput-boolean v1, p0, Lcom/youku/vo/HomeCardInfo;->isSlided:Z

    .line 105
    iput v1, p0, Lcom/youku/vo/HomeCardInfo;->is_youku_channel:I

    .line 107
    iput v1, p0, Lcom/youku/vo/HomeCardInfo;->column_id:I

    .line 109
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->cid:Ljava/lang/String;

    .line 111
    iput v1, p0, Lcom/youku/vo/HomeCardInfo;->normal_video_count:I

    .line 113
    iput v1, p0, Lcom/youku/vo/HomeCardInfo;->banner_id:I

    .line 115
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->banner_url:Ljava/lang/String;

    .line 117
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->banner_title:Ljava/lang/String;

    .line 119
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->banner_image:Ljava/lang/String;

    .line 121
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->banner_jump_type:Ljava/lang/String;

    .line 123
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->banner_content_type:Ljava/lang/String;

    .line 125
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->banner_cps_id:Ljava/lang/String;

    .line 127
    iput-boolean v1, p0, Lcom/youku/vo/HomeCardInfo;->is_advertisement_banner:Z

    .line 129
    iput v1, p0, Lcom/youku/vo/HomeCardInfo;->url_open_way:I

    .line 131
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->image_state:Ljava/lang/String;

    .line 133
    iput v1, p0, Lcom/youku/vo/HomeCardInfo;->video_list_id:I

    .line 135
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->video_list_url:Ljava/lang/String;

    .line 137
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->bg_img:Ljava/lang/String;

    .line 139
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->title:Ljava/lang/String;

    .line 141
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->image:Ljava/lang/String;

    .line 143
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->image_link:Ljava/lang/String;

    .line 145
    iput v1, p0, Lcom/youku/vo/HomeCardInfo;->card_type:I

    .line 147
    iput v1, p0, Lcom/youku/vo/HomeCardInfo;->box_type:I

    .line 149
    iput-boolean v1, p0, Lcom/youku/vo/HomeCardInfo;->isHasHeader:Z

    .line 151
    iput-boolean v1, p0, Lcom/youku/vo/HomeCardInfo;->isHasTail:Z

    .line 153
    iput-boolean v1, p0, Lcom/youku/vo/HomeCardInfo;->isHasPoster:Z

    .line 155
    iput-boolean v1, p0, Lcom/youku/vo/HomeCardInfo;->isHasExtendedArea:Z

    .line 157
    iput v1, p0, Lcom/youku/vo/HomeCardInfo;->pos:I

    .line 159
    iput v1, p0, Lcom/youku/vo/HomeCardInfo;->gallery_pos:I

    .line 161
    iput-boolean v1, p0, Lcom/youku/vo/HomeCardInfo;->isCanGoTop:Z

    .line 163
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->h5_height:Ljava/lang/String;

    .line 165
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->h5_url:Ljava/lang/String;

    .line 167
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->banner_jump_id:Ljava/lang/String;

    .line 169
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->banner_content_id:Ljava/lang/String;

    .line 171
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->banner_first_episode_video_id:Ljava/lang/String;

    .line 173
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->banner_broadcast_image:Ljava/lang/String;

    .line 175
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->intro:Ljava/lang/String;

    .line 177
    iput v1, p0, Lcom/youku/vo/HomeCardInfo;->advertisement_id:I

    .line 179
    iput v1, p0, Lcom/youku/vo/HomeCardInfo;->live_sdk_type:I

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/vo/HomeCardInfo;->isHiddenHeader:Z

    .line 183
    iput-boolean v1, p0, Lcom/youku/vo/HomeCardInfo;->is_for_a_expansion:Z

    .line 185
    iput-boolean v1, p0, Lcom/youku/vo/HomeCardInfo;->is_for_a_change:Z

    .line 187
    iput v1, p0, Lcom/youku/vo/HomeCardInfo;->expansion_count:I

    .line 189
    iput v3, p0, Lcom/youku/vo/HomeCardInfo;->recommandCardPos:I

    .line 191
    iput-boolean v1, p0, Lcom/youku/vo/HomeCardInfo;->isRecommandedCard:Z

    .line 193
    iput-boolean v1, p0, Lcom/youku/vo/HomeCardInfo;->isPGCCard:Z

    .line 195
    iput-boolean v1, p0, Lcom/youku/vo/HomeCardInfo;->isPortaitPic:Z

    .line 197
    iput-boolean v1, p0, Lcom/youku/vo/HomeCardInfo;->is2lineTitle:Z

    .line 201
    iput-object v2, p0, Lcom/youku/vo/HomeCardInfo;->negitive_feedback:Landroid/view/View$OnClickListener;

    .line 221
    new-instance v0, Lcom/youku/vo/HomeTagInfo;

    invoke-direct {v0}, Lcom/youku/vo/HomeTagInfo;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    .line 225
    iput-boolean v1, p0, Lcom/youku/vo/HomeCardInfo;->hasSubPage:Z

    .line 226
    iput v3, p0, Lcom/youku/vo/HomeCardInfo;->dct:I

    .line 79
    return-void
.end method


# virtual methods
.method public isCanJumpChannel()Z
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/youku/vo/HomeCardInfo;->homeJumpInfo:Lcom/youku/vo/HomeJumpInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/vo/HomeCardInfo;->homeJumpInfo:Lcom/youku/vo/HomeJumpInfo;

    iget-object v0, v0, Lcom/youku/vo/HomeJumpInfo;->type:Ljava/lang/String;

    const-string/jumbo v1, "no_jump"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGameCard()Z
    .locals 2

    .prologue
    .line 236
    iget v0, p0, Lcom/youku/vo/HomeCardInfo;->column_id:I

    const/16 v1, 0x334

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isYoukuChannel()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 240
    iget v1, p0, Lcom/youku/vo/HomeCardInfo;->is_youku_channel:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HomeCardInfo [sliders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/HomeCardInfo;->sliders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", under_sliders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/HomeCardInfo;->under_sliders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", homeJumpInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/HomeCardInfo;->homeJumpInfo:Lcom/youku/vo/HomeJumpInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", homeTagInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/HomeCardInfo;->homeTagInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", homeVideoInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/HomeCardInfo;->homeVideoInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", column_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/vo/HomeCardInfo;->column_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/HomeCardInfo;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/HomeCardInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/HomeCardInfo;->image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", image_link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/HomeCardInfo;->image_link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", card_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/vo/HomeCardInfo;->card_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/vo/HomeCardInfo;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
