.class public Lc8/UBo;
.super Ljava/lang/Object;
.source "DrawerEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/TBo;,
        Lc8/SBo;,
        Lc8/QBo;,
        Lc8/RBo;
    }
.end annotation


# static fields
.field public static final BOX_ITEM_MEMBER_CENTER_INFO:I = 0x14

.field public static final BOX_ITEM_MEMBER_CENTER_MY_PREROGATIVE:I = 0x19

.field public static final BOX_ITEM_MEMBER_CENTER_MY_VIP:I = 0x15

.field public static final BOX_ITEM_MEMBER_CENTER_TICKET:I = 0x16

.field public static final BOX_ITEM_MEMBER_CENTER_VIP_FUNCTIONS:I = 0x18

.field public static final BOX_ITEM_MEMBER_CENTER_WELFARE:I = 0x17

.field public static final BOX_TYPE_MEMBERSHIP_BANNER:Ljava/lang/String; = "membership_banner"

.field public static final BOX_TYPE_MEMBERSHIP_BIG_WORD:Ljava/lang/String; = "membership_big_word"

.field public static final BOX_TYPE_MEMBERSHIP_CINEMA:Ljava/lang/String; = "membership_cinema"

.field public static final BOX_TYPE_MEMBERSHIP_HORIZONTAL:Ljava/lang/String; = "membership_horizontal"

.field public static final BOX_TYPE_MEMBERSHIP_HORIZONTAL_SCROLL_LIFE:Ljava/lang/String; = "membership_horizontal_scroll_life"

.field public static final BOX_TYPE_MEMBERSHIP_INTERESTING_CUBE:Ljava/lang/String; = "membership_intrest"

.field public static final BOX_TYPE_MEMBERSHIP_SCROLL:Ljava/lang/String; = "membership_scroll"

.field public static final BOX_TYPE_MEMBERSHIP_TEXT:Ljava/lang/String; = "membership_text"

.field public static final BOX_TYPE_MEMBERSHIP_TIMER:Ljava/lang/String; = "membership_timer"

.field public static final BOX_TYPE_MEMBERSHIP_UPCOMING:Ljava/lang/String; = "membership_upcoming"

.field public static final BOX_TYPE_MEMBERSHIP_VERTICAL:Ljava/lang/String; = "membership_vertical"

.field public static final BOX_TYPE_MEMBER_CENTER_INFO:Ljava/lang/String; = "2010"

.field public static final BOX_TYPE_MEMBER_CENTER_MY_PREROGATIVE:Ljava/lang/String; = "2015"

.field public static final BOX_TYPE_MEMBER_CENTER_MY_VIP:Ljava/lang/String; = "2011"

.field public static final BOX_TYPE_MEMBER_CENTER_TICKET:Ljava/lang/String; = "2012"

.field public static final BOX_TYPE_MEMBER_CENTER_VIP_FUNCTIONS:Ljava/lang/String; = "2014"

.field public static final BOX_TYPE_MEMBER_CENTER_WELFARE:Ljava/lang/String; = "2013"

.field public static final BOX_TYPE_RECOMMEND:Ljava/lang/String; = "recommend"

.field public static final BOX_TYPE_SLIDER:Ljava/lang/String; = "slider"

.field public static final BOX_TYPE_VIP_BENEFIT:Ljava/lang/String; = "vip_benefit"

.field public static final BOX_TYPE_VIP_MILESTONE:Ljava/lang/String; = "miles_stone"

.field public static final BOX_TYPE_VIP_PRIVILEGE:Ljava/lang/String; = "privilege"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BOX_TYPE_WEEK_RECOMMEND:Ljava/lang/String; = "week_recommend_home"

.field public static final BOX_TYPE_WEEK_RECOMMEND_LIST:Ljava/lang/String; = "week_recommend_list"

.field public static final BOX_TYPE_WELFARE:Ljava/lang/String; = "welfare"

.field public static final TYPE_ITEM_HEADER:I = 0x1

.field public static final TYPE_ITEM_LIKES:I = 0x11

.field public static final TYPE_ITEM_MEMBERSHIP_BANNER:I = 0x9

.field public static final TYPE_ITEM_MEMBERSHIP_BIG_WORD:I = 0x7

.field public static final TYPE_ITEM_MEMBERSHIP_HORIZONTAL:I = 0x6

.field public static final TYPE_ITEM_MEMBERSHIP_HORIZONTAL_SCROLL_LIFE:I = 0xf

.field public static final TYPE_ITEM_MEMBERSHIP_SCROLL:I = 0x4

.field public static final TYPE_ITEM_MEMBERSHIP_TEXT:I = 0x8

.field public static final TYPE_ITEM_MEMBERSHIP_TIMER:I = 0x13

.field public static final TYPE_ITEM_MEMBERSHIP_UPCOMING:I = 0xa

.field public static final TYPE_ITEM_MEMBERSHIP_VERTICAL:I = 0x5

.field public static final TYPE_ITEM_MEMBER_CENTER_INTERESTING_CUBE:I = 0x1c

.field public static final TYPE_ITEM_PERSONAL_VIDEO:I = 0x1d

.field public static final TYPE_ITEM_PRIVILEGE:I = 0x12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_ITEM_SLIDER:I = 0x3

.field public static final TYPE_ITEM_TAIL:I = 0x2

.field public static final TYPE_ITEM_VIP_BENEFIT:I = 0xe

.field public static final TYPE_ITEM_VIP_MILESTONE:I = 0x10

.field public static final TYPE_ITEM_WEEK_RECOMMEND:I = 0xb

.field public static final TYPE_ITEM_WEEK_RECOMMEND_LSIT:I = 0xc

.field public static final TYPE_ITEM_WELFARE:I = 0xd


# instance fields
.field private bg_img:Ljava/lang/String;

.field private box_id:Ljava/lang/String;

.field private box_name:Ljava/lang/String;

.field private box_type:Ljava/lang/String;

.field public contents:Ljava/lang/Object;

.field private header:Lc8/QBo;

.field private max_count:I

.field private padding_top:I

.field private position:I

.field private pvid:Ljava/lang/String;

.field private scm:Ljava/lang/String;

.field private tail:Lc8/TBo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    return-void
.end method

.method private generateContents()V
    .locals 4

    .prologue
    .line 233
    iget-object v2, p0, Lc8/UBo;->contents:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/UBo;->box_type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    :try_start_0
    iget-object v2, p0, Lc8/UBo;->box_type:Ljava/lang/String;

    invoke-static {v2}, Lc8/PBo;->getType(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 236
    .local v1, "type":Ljava/lang/reflect/Type;
    iget-object v2, p0, Lc8/UBo;->contents:Ljava/lang/Object;

    invoke-static {}, Lc8/XIb;->getGlobalInstance()Lc8/XIb;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lc8/RJb;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc8/XIb;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lc8/UBo;->contents:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v1    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "exception":Lcom/alibaba/fastjson/JSONException;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    .line 239
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/UBo;->contents:Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getItemType(Ljava/lang/String;)I
    .locals 7
    .param p0, "boxType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x4

    const/4 v0, 0x3

    const/4 v4, 0x0

    .line 82
    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    move v0, v4

    .line 162
    :goto_1
    :pswitch_0
    return v0

    .line 82
    :sswitch_0
    const-string/jumbo v6, "slider"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "membership_scroll"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "recommend"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "membership_vertical"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v0

    goto :goto_0

    :sswitch_4
    const-string/jumbo v6, "membership_horizontal"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v1

    goto :goto_0

    :sswitch_5
    const-string/jumbo v6, "membership_big_word"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_6
    const-string/jumbo v6, "membership_text"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_7
    const-string/jumbo v6, "privilege"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v6, "membership_banner"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v6, "membership_upcoming"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v6, "week_recommend_home"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v6, "week_recommend_list"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v6, "welfare"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v6, "vip_benefit"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v6, "membership_horizontal_scroll_life"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v6, "miles_stone"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v6, "membership_cinema"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v6, "membership_timer"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v6, "2010"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v6, "2011"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v6, "2012"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v6, "2013"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v6, "2014"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v6, "2015"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v6, "membership_intrest"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x18

    goto/16 :goto_0

    :pswitch_1
    move v0, v1

    .line 87
    goto/16 :goto_1

    .line 90
    :pswitch_2
    const/16 v0, 0x11

    goto/16 :goto_1

    :pswitch_3
    move v0, v2

    .line 92
    goto/16 :goto_1

    :pswitch_4
    move v0, v3

    .line 95
    goto/16 :goto_1

    .line 98
    :pswitch_5
    const/4 v0, 0x7

    goto/16 :goto_1

    .line 101
    :pswitch_6
    const/16 v0, 0x8

    goto/16 :goto_1

    .line 104
    :pswitch_7
    const/16 v0, 0x12

    goto/16 :goto_1

    .line 107
    :pswitch_8
    const/16 v0, 0x9

    goto/16 :goto_1

    .line 109
    :pswitch_9
    const/16 v0, 0xa

    goto/16 :goto_1

    .line 112
    :pswitch_a
    const/16 v0, 0xb

    goto/16 :goto_1

    .line 115
    :pswitch_b
    const/16 v0, 0xc

    goto/16 :goto_1

    .line 118
    :pswitch_c
    const/16 v0, 0xd

    goto/16 :goto_1

    .line 121
    :pswitch_d
    const/16 v0, 0xe

    goto/16 :goto_1

    .line 124
    :pswitch_e
    const/16 v0, 0xf

    goto/16 :goto_1

    .line 127
    :pswitch_f
    const/16 v0, 0x10

    goto/16 :goto_1

    .line 130
    :pswitch_10
    const/16 v0, 0x1d

    goto/16 :goto_1

    .line 133
    :pswitch_11
    const/16 v0, 0x13

    goto/16 :goto_1

    .line 136
    :pswitch_12
    const/16 v0, 0x14

    goto/16 :goto_1

    .line 139
    :pswitch_13
    const/16 v0, 0x15

    goto/16 :goto_1

    .line 143
    :pswitch_14
    const/16 v0, 0x16

    goto/16 :goto_1

    .line 147
    :pswitch_15
    const/16 v0, 0x17

    goto/16 :goto_1

    .line 151
    :pswitch_16
    const/16 v0, 0x18

    goto/16 :goto_1

    .line 155
    :pswitch_17
    const/16 v0, 0x19

    goto/16 :goto_1

    .line 158
    :pswitch_18
    const/16 v0, 0x1c

    goto/16 :goto_1

    .line 82
    :sswitch_data_0
    .sparse-switch
        -0x73b6fc1c -> :sswitch_f
        -0x604f7e41 -> :sswitch_3
        -0x5e05094f -> :sswitch_7
        -0x5523140a -> :sswitch_6
        -0x4f3dc664 -> :sswitch_11
        -0x43f3c7d3 -> :sswitch_4
        -0x359f871f -> :sswitch_0
        -0x97a8be4 -> :sswitch_e
        0x1774dd -> :sswitch_12
        0x1774de -> :sswitch_13
        0x1774df -> :sswitch_14
        0x1774e0 -> :sswitch_15
        0x1774e1 -> :sswitch_16
        0x1774e2 -> :sswitch_17
        0x30c3b675 -> :sswitch_d
        0x3af610bc -> :sswitch_2
        0x41cb3d32 -> :sswitch_5
        0x485d97b5 -> :sswitch_8
        0x4980c48c -> :sswitch_c
        0x4a830b7a -> :sswitch_10
        0x4c265cda -> :sswitch_18
        0x5db91a2d -> :sswitch_a
        0x5dbad5ec -> :sswitch_b
        0x63d6a365 -> :sswitch_9
        0x657dff56 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public box_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lc8/UBo;->box_id:Ljava/lang/String;

    return-object v0
.end method

.method public box_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lc8/UBo;->box_name:Ljava/lang/String;

    return-object v0
.end method

.method public box_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lc8/UBo;->box_type:Ljava/lang/String;

    return-object v0
.end method

.method public contents()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lc8/UBo;->contents:Ljava/lang/Object;

    return-object v0
.end method

.method public getBg_img()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lc8/UBo;->bg_img:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lc8/UBo;->position:I

    return v0
.end method

.method public getPvid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lc8/UBo;->pvid:Ljava/lang/String;

    return-object v0
.end method

.method public getScm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lc8/UBo;->scm:Ljava/lang/String;

    return-object v0
.end method

.method public header()Lc8/QBo;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lc8/UBo;->header:Lc8/QBo;

    return-object v0
.end method

.method public max_count()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lc8/UBo;->max_count:I

    return v0
.end method

.method public padding_top()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 290
    iget v1, p0, Lc8/UBo;->padding_top:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBg_img(Ljava/lang/String;)V
    .locals 0
    .param p1, "bg_img"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lc8/UBo;->bg_img:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public final setBox_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "box_id"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lc8/UBo;->box_id:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setBox_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "box_name"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lc8/UBo;->box_name:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public final setBox_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "box_type"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lc8/UBo;->box_type:Ljava/lang/String;

    .line 187
    invoke-direct {p0}, Lc8/UBo;->generateContents()V

    .line 188
    return-void
.end method

.method public final setContents(Ljava/lang/Object;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/Object;

    .prologue
    .line 191
    iput-object p1, p0, Lc8/UBo;->contents:Ljava/lang/Object;

    .line 192
    invoke-direct {p0}, Lc8/UBo;->generateContents()V

    .line 193
    return-void
.end method

.method public setHeader(Lc8/QBo;)V
    .locals 0
    .param p1, "header"    # Lc8/QBo;

    .prologue
    .line 209
    iput-object p1, p0, Lc8/UBo;->header:Lc8/QBo;

    .line 210
    return-void
.end method

.method public setMax_count(I)V
    .locals 0
    .param p1, "max_count"    # I

    .prologue
    .line 217
    iput p1, p0, Lc8/UBo;->max_count:I

    .line 218
    return-void
.end method

.method public setPadding_top(I)V
    .locals 0
    .param p1, "padding_top"    # I

    .prologue
    .line 221
    iput p1, p0, Lc8/UBo;->padding_top:I

    .line 222
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 229
    iput p1, p0, Lc8/UBo;->position:I

    .line 230
    return-void
.end method

.method public setPvid(Ljava/lang/String;)V
    .locals 0
    .param p1, "pvid"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lc8/UBo;->pvid:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setScm(Ljava/lang/String;)V
    .locals 0
    .param p1, "scm"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lc8/UBo;->scm:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setTail(Lc8/TBo;)V
    .locals 0
    .param p1, "tail"    # Lc8/TBo;

    .prologue
    .line 213
    iput-object p1, p0, Lc8/UBo;->tail:Lc8/TBo;

    .line 214
    return-void
.end method

.method public tail()Lc8/TBo;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lc8/UBo;->tail:Lc8/TBo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DrawerEntity{box_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/UBo;->box_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", box_type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/UBo;->box_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", box_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/UBo;->box_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", contents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/UBo;->contents:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/UBo;->header:Lc8/QBo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/UBo;->tail:Lc8/TBo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", max_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/UBo;->max_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", padding_top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/UBo;->padding_top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
