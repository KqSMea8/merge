.class public Lcom/youku/usercenter/vo/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/hso;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/usercenter/vo/UserInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public birthday:J

.field public city:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public days_str:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public favorite_count:I

.field public following_state:I

.field public gender:I

.field public isAnonymous:Z

.field public isIncomplete:Z

.field public isQingVip:Z

.field public kfcrm_count:I

.field public local_count:I

.field public mmid:Ljava/lang/String;

.field public mobile:Ljava/lang/String;

.field public my_upload_count:I

.field public nickName:Ljava/lang/String;

.field public play_list_count:I

.field public point_score:I

.field public province:Ljava/lang/String;

.field public rank:I

.field public rankIcon:Ljava/lang/String;

.field public remain_days:I

.field public subscribe_count:I

.field public task_completed_cnt:I

.field public task_total_cnt:I

.field public today_max_score:I

.field public today_score:I

.field public total_score:J

.field public uid:Ljava/lang/String;

.field public upgrade_score:I

.field public userAvatar:Lc8/hso;

.field public verified:Z

.field public vip:Z

.field public vipGrade:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 251
    new-instance v0, Lc8/gso;

    invoke-direct {v0}, Lc8/gso;-><init>()V

    sput-object v0, Lcom/youku/usercenter/vo/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/youku/usercenter/vo/UserInfo;->isAnonymous:Z

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->uid:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->nickName:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/youku/usercenter/vo/UserInfo;->verified:Z

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/youku/usercenter/vo/UserInfo;->vip:Z

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/youku/usercenter/vo/UserInfo;->isQingVip:Z

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    iput-boolean v1, p0, Lcom/youku/usercenter/vo/UserInfo;->isIncomplete:Z

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->rankIcon:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->days_str:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->remain_days:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->rank:I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->today_max_score:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->today_score:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/usercenter/vo/UserInfo;->total_score:J

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->upgrade_score:I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->my_upload_count:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->local_count:I

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->favorite_count:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->play_list_count:I

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->subscribe_count:I

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->point_score:I

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->kfcrm_count:I

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->task_completed_cnt:I

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->task_total_cnt:I

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->following_state:I

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->gender:I

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/usercenter/vo/UserInfo;->birthday:J

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->description:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->country:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->province:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->city:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->mobile:Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->email:Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->mmid:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->vipGrade:I

    .line 249
    return-void

    :cond_0
    move v0, v2

    .line 214
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 217
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 218
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 219
    goto/16 :goto_3

    :cond_4
    move v1, v2

    .line 220
    goto/16 :goto_4
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isAnonymous"    # Z

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-boolean p1, p0, Lcom/youku/usercenter/vo/UserInfo;->isAnonymous:Z

    .line 211
    return-void
.end method


# virtual methods
.method public buildUserAvatar()Lc8/hso;
    .locals 1

    .prologue
    .line 337
    new-instance v0, Lc8/hso;

    invoke-direct {v0}, Lc8/hso;-><init>()V

    return-object v0
.end method

.method public clone(Lcom/youku/usercenter/vo/UserInfo;)V
    .locals 2
    .param p1, "other"    # Lcom/youku/usercenter/vo/UserInfo;

    .prologue
    .line 311
    iget-boolean v0, p1, Lcom/youku/usercenter/vo/UserInfo;->isAnonymous:Z

    iput-boolean v0, p0, Lcom/youku/usercenter/vo/UserInfo;->isAnonymous:Z

    .line 312
    iget-object v0, p1, Lcom/youku/usercenter/vo/UserInfo;->uid:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->uid:Ljava/lang/String;

    .line 313
    iget-object v0, p1, Lcom/youku/usercenter/vo/UserInfo;->nickName:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->nickName:Ljava/lang/String;

    .line 314
    iget-boolean v0, p1, Lcom/youku/usercenter/vo/UserInfo;->verified:Z

    iput-boolean v0, p0, Lcom/youku/usercenter/vo/UserInfo;->verified:Z

    .line 315
    iget-boolean v0, p1, Lcom/youku/usercenter/vo/UserInfo;->vip:Z

    iput-boolean v0, p0, Lcom/youku/usercenter/vo/UserInfo;->vip:Z

    .line 316
    iget-boolean v0, p1, Lcom/youku/usercenter/vo/UserInfo;->isQingVip:Z

    iput-boolean v0, p0, Lcom/youku/usercenter/vo/UserInfo;->isQingVip:Z

    .line 317
    iget-boolean v0, p1, Lcom/youku/usercenter/vo/UserInfo;->isIncomplete:Z

    iput-boolean v0, p0, Lcom/youku/usercenter/vo/UserInfo;->isIncomplete:Z

    .line 318
    iget-object v0, p1, Lcom/youku/usercenter/vo/UserInfo;->days_str:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->days_str:Ljava/lang/String;

    .line 319
    iget v0, p1, Lcom/youku/usercenter/vo/UserInfo;->remain_days:I

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->remain_days:I

    .line 320
    iget v0, p1, Lcom/youku/usercenter/vo/UserInfo;->rank:I

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->rank:I

    .line 321
    iget-object v0, p1, Lcom/youku/usercenter/vo/UserInfo;->rankIcon:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->rankIcon:Ljava/lang/String;

    .line 322
    iget v0, p1, Lcom/youku/usercenter/vo/UserInfo;->today_max_score:I

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->today_max_score:I

    .line 323
    iget v0, p1, Lcom/youku/usercenter/vo/UserInfo;->today_score:I

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->today_score:I

    .line 324
    iget-wide v0, p1, Lcom/youku/usercenter/vo/UserInfo;->total_score:J

    iput-wide v0, p0, Lcom/youku/usercenter/vo/UserInfo;->total_score:J

    .line 325
    iget v0, p1, Lcom/youku/usercenter/vo/UserInfo;->upgrade_score:I

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->upgrade_score:I

    .line 326
    iget-object v0, p1, Lcom/youku/usercenter/vo/UserInfo;->userAvatar:Lc8/hso;

    iput-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->userAvatar:Lc8/hso;

    .line 327
    iget-object v0, p1, Lcom/youku/usercenter/vo/UserInfo;->mmid:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->mmid:Ljava/lang/String;

    .line 328
    iget v0, p1, Lcom/youku/usercenter/vo/UserInfo;->vipGrade:I

    iput v0, p0, Lcom/youku/usercenter/vo/UserInfo;->vipGrade:I

    .line 334
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public getUploadCount()I
    .locals 2

    .prologue
    .line 269
    iget v0, p0, Lcom/youku/usercenter/vo/UserInfo;->my_upload_count:I

    iget v1, p0, Lcom/youku/usercenter/vo/UserInfo;->local_count:I

    add-int/2addr v0, v1

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/usercenter/vo/UserInfo;->isAnonymous:Z

    .line 277
    iput-object v1, p0, Lcom/youku/usercenter/vo/UserInfo;->uid:Ljava/lang/String;

    .line 278
    iput-object v1, p0, Lcom/youku/usercenter/vo/UserInfo;->nickName:Ljava/lang/String;

    .line 279
    iput-boolean v2, p0, Lcom/youku/usercenter/vo/UserInfo;->verified:Z

    .line 280
    iput-boolean v2, p0, Lcom/youku/usercenter/vo/UserInfo;->vip:Z

    .line 281
    iput-boolean v2, p0, Lcom/youku/usercenter/vo/UserInfo;->isQingVip:Z

    .line 282
    iput-boolean v2, p0, Lcom/youku/usercenter/vo/UserInfo;->isIncomplete:Z

    .line 283
    iput-object v1, p0, Lcom/youku/usercenter/vo/UserInfo;->days_str:Ljava/lang/String;

    .line 284
    iput v2, p0, Lcom/youku/usercenter/vo/UserInfo;->remain_days:I

    .line 285
    iput v2, p0, Lcom/youku/usercenter/vo/UserInfo;->rank:I

    .line 286
    iput-object v1, p0, Lcom/youku/usercenter/vo/UserInfo;->rankIcon:Ljava/lang/String;

    .line 287
    iput v2, p0, Lcom/youku/usercenter/vo/UserInfo;->today_max_score:I

    .line 288
    iput v2, p0, Lcom/youku/usercenter/vo/UserInfo;->today_score:I

    .line 289
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/youku/usercenter/vo/UserInfo;->total_score:J

    .line 290
    iput v2, p0, Lcom/youku/usercenter/vo/UserInfo;->upgrade_score:I

    .line 291
    iput v2, p0, Lcom/youku/usercenter/vo/UserInfo;->my_upload_count:I

    .line 292
    iput v2, p0, Lcom/youku/usercenter/vo/UserInfo;->local_count:I

    .line 293
    iput v2, p0, Lcom/youku/usercenter/vo/UserInfo;->favorite_count:I

    .line 294
    iput v2, p0, Lcom/youku/usercenter/vo/UserInfo;->play_list_count:I

    .line 295
    iput v2, p0, Lcom/youku/usercenter/vo/UserInfo;->subscribe_count:I

    .line 296
    iput v2, p0, Lcom/youku/usercenter/vo/UserInfo;->kfcrm_count:I

    .line 297
    iput v2, p0, Lcom/youku/usercenter/vo/UserInfo;->following_state:I

    .line 298
    iput v2, p0, Lcom/youku/usercenter/vo/UserInfo;->task_total_cnt:I

    .line 299
    iput v2, p0, Lcom/youku/usercenter/vo/UserInfo;->task_completed_cnt:I

    .line 300
    iput v2, p0, Lcom/youku/usercenter/vo/UserInfo;->point_score:I

    .line 301
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->mobile:Ljava/lang/String;

    .line 302
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->email:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 347
    iget-boolean v0, p0, Lcom/youku/usercenter/vo/UserInfo;->isAnonymous:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 348
    iget-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->uid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    iget-boolean v0, p0, Lcom/youku/usercenter/vo/UserInfo;->verified:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 351
    iget-boolean v0, p0, Lcom/youku/usercenter/vo/UserInfo;->vip:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 352
    iget-boolean v0, p0, Lcom/youku/usercenter/vo/UserInfo;->isQingVip:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 353
    iget-boolean v0, p0, Lcom/youku/usercenter/vo/UserInfo;->isIncomplete:Z

    if-eqz v0, :cond_4

    :goto_4
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 354
    iget-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->rankIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->days_str:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget v0, p0, Lcom/youku/usercenter/vo/UserInfo;->remain_days:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget v0, p0, Lcom/youku/usercenter/vo/UserInfo;->rank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget v0, p0, Lcom/youku/usercenter/vo/UserInfo;->today_max_score:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget v0, p0, Lcom/youku/usercenter/vo/UserInfo;->today_score:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget-wide v0, p0, Lcom/youku/usercenter/vo/UserInfo;->total_score:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 361
    iget v0, p0, Lcom/youku/usercenter/vo/UserInfo;->upgrade_score:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget v0, p0, Lcom/youku/usercenter/vo/UserInfo;->my_upload_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget v0, p0, Lcom/youku/usercenter/vo/UserInfo;->local_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget v0, p0, Lcom/youku/usercenter/vo/UserInfo;->favorite_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget v0, p0, Lcom/youku/usercenter/vo/UserInfo;->play_list_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    iget v0, p0, Lcom/youku/usercenter/vo/UserInfo;->subscribe_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget v0, p0, Lcom/youku/usercenter/vo/UserInfo;->point_score:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget v0, p0, Lcom/youku/usercenter/vo/UserInfo;->kfcrm_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    iget v0, p0, Lcom/youku/usercenter/vo/UserInfo;->task_completed_cnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget v0, p0, Lcom/youku/usercenter/vo/UserInfo;->task_total_cnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget v0, p0, Lcom/youku/usercenter/vo/UserInfo;->following_state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget v0, p0, Lcom/youku/usercenter/vo/UserInfo;->gender:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget-wide v0, p0, Lcom/youku/usercenter/vo/UserInfo;->birthday:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 374
    iget-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->province:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->mobile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/youku/usercenter/vo/UserInfo;->mmid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 381
    iget v0, p0, Lcom/youku/usercenter/vo/UserInfo;->vipGrade:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    return-void

    :cond_0
    move v0, v2

    .line 347
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 350
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 351
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 352
    goto/16 :goto_3

    :cond_4
    move v1, v2

    .line 353
    goto/16 :goto_4
.end method
