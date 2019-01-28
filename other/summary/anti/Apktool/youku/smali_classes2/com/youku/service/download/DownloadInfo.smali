.class public final Lcom/youku/service/download/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Odn;,
        Lc8/Ndn;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/youku/service/download/DownloadInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXCEPTION_ENCRYPTED_VIDEO:I = 0xc

.field public static final EXCEPTION_HTTP_BAD_REQUEST:I = 0xd

.field public static final EXCEPTION_HTTP_GONE:I = 0xe

.field public static final EXCEPTION_HTTP_NOT_FOUND:I = 0x6

.field public static final EXCEPTION_NETWORK_ERROR:I = 0xa

.field public static final EXCEPTION_NO_COPYRIGHT:I = 0x4

.field public static final EXCEPTION_NO_NETWORK:I = 0x2

.field public static final EXCEPTION_NO_RESOURCES:I = 0x5

.field public static final EXCEPTION_NO_SDCARD:I = 0x1

.field public static final EXCEPTION_NO_SPACE:I = 0x3

.field public static final EXCEPTION_ONLY_MEMBERS_CAN_DOWNLOAD:I = 0xf

.field public static final EXCEPTION_ONLY_SUBSCRIBE_CAN_DOWNLOAD:I = 0x10

.field public static final EXCEPTION_PROHIBIT_DOWNLOAD:I = 0xb

.field public static final EXCEPTION_TIMEOUT:I = 0x7

.field public static final EXCEPTION_UNKNOWN_ERROR:I = 0x9

.field public static final EXCEPTION_WRITE_ERROR:I = 0x8

.field public static final FORMAT_3GP:I = 0x2

.field public static final FORMAT_FLV:I = 0x5

.field public static final FORMAT_HD2:I = 0x7

.field public static final FORMAT_HD3:I = 0x8

.field public static final FORMAT_MP4:I = 0x1

.field public static final FORMAT_POSTFIX:[Ljava/lang/String;

.field public static final FORMAT_STRINGS:[Ljava/lang/String;

.field private static final KEY_AD:Ljava/lang/String; = "ad"

.field private static final KEY_VIDEO_DOWNLOAD_PASSWORD:Ljava/lang/String; = "video_download_password"

.field private static final KEY_canPlay:Ljava/lang/String; = "canPlay"

.field private static final KEY_cats:Ljava/lang/String; = "cats"

.field private static final KEY_createtime:Ljava/lang/String; = "createtime"

.field private static final KEY_downloadedsize:Ljava/lang/String; = "downloadedsize"

.field private static final KEY_exceptionid:Ljava/lang/String; = "exceptionid"

.field private static final KEY_finishtime:Ljava/lang/String; = "finishtime"

.field private static final KEY_format:Ljava/lang/String; = "format"

.field private static final KEY_getUrlTime:Ljava/lang/String; = "getUrlTime"

.field private static final KEY_imgUrl:Ljava/lang/String; = "imgUrl"

.field private static final KEY_isEncryption:Ljava/lang/String; = "isEncryption"

.field private static final KEY_isExposure:Ljava/lang/String; = "isExposure"

.field private static final KEY_isPanorama:Ljava/lang/String; = "isPanorama"

.field private static final KEY_isPreviewDownloadFinished:Ljava/lang/String; = "isPreviewOK"

.field private static final KEY_isPushDownload:Ljava/lang/String; = "isPushDownload"

.field private static final KEY_isShowWatermark:Ljava/lang/String; = "isShowWatermark"

.field private static final KEY_isSubtitlesDownloadFinished:Ljava/lang/String; = "isSubtitlesDownloadFinished"

.field private static final KEY_isVerticalVideo:Ljava/lang/String; = "isVerticalVideo"

.field private static final KEY_isVideoThumbDownloadFinished:Ljava/lang/String; = "isVideoThumbOK"

.field private static final KEY_language:Ljava/lang/String; = "language"

.field private static final KEY_lastPlayTime:Ljava/lang/String; = "lastPlayTime"

.field private static final KEY_playTime:Ljava/lang/String; = "playTime"

.field private static final KEY_points:Ljava/lang/String; = "points"

.field private static final KEY_preview:Ljava/lang/String; = "preview"

.field private static final KEY_progress:Ljava/lang/String; = "progress"

.field private static final KEY_savepath:Ljava/lang/String; = "savepath"

.field private static final KEY_seconds:Ljava/lang/String; = "seconds"

.field private static final KEY_segID:Ljava/lang/String; = "segstep"

.field private static final KEY_segInfos:Ljava/lang/String; = "segInfos"

.field private static final KEY_segcount:Ljava/lang/String; = "segcount"

.field private static final KEY_segdownloadedsize:Ljava/lang/String; = "segdownloadedsize"

.field private static final KEY_segsseconds:Ljava/lang/String; = "segsseconds"

.field private static final KEY_segssize:Ljava/lang/String; = "segssize"

.field private static final KEY_show_videoseq:Ljava/lang/String; = "show_videoseq"

.field private static final KEY_showepisode_total:Ljava/lang/String; = "showepisode_total"

.field private static final KEY_showid:Ljava/lang/String; = "showid"

.field private static final KEY_showname:Ljava/lang/String; = "showname"

.field private static final KEY_size:Ljava/lang/String; = "size"

.field private static final KEY_starttime:Ljava/lang/String; = "starttime"

.field private static final KEY_state:Ljava/lang/String; = "state"

.field private static final KEY_subtitles:Ljava/lang/String; = "subtitles"

.field private static final KEY_taskid:Ljava/lang/String; = "taskid"

.field private static final KEY_title:Ljava/lang/String; = "title"

.field private static final KEY_versionCode:Ljava/lang/String; = "versionCode"

.field private static final KEY_vid:Ljava/lang/String; = "vid"

.field private static final KEY_videotype:Ljava/lang/String; = "videotype"

.field public static final STATE_CANCEL:I = 0x4

.field public static final STATE_DOWNLOADING:I = 0x0

.field public static final STATE_EXCEPTION:I = 0x2

.field public static final STATE_FINISH:I = 0x1

.field public static final STATE_INIT:I = -0x1

.field public static final STATE_PAUSE:I = 0x3

.field public static final STATE_PROHIBITED:I = 0x6

.field public static final STATE_WAITING:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Download_DownloadInfo"

.field public static compareBy:I


# instance fields
.field public ad:Lorg/json/JSONObject;

.field public canPlay:Z

.field public cats:Ljava/lang/String;

.field public createTime:J

.field public downloadListener:Lc8/xen;

.field public downloadedSize:J

.field private exceptionId:I

.field public finishTime:J

.field public format:I

.field public getUrlTime:J

.field public headerSize:I

.field public header_buf:[B

.field public imgUrl:Ljava/lang/String;

.field public isEncryption:Z

.field public isExposure:Z

.field public isPreviewDownloadFinished:Z

.field public isPushDownload:Z

.field public isShowWatermark:Z

.field public isSubtitlesDownloadFinished:Z

.field public isThumbnailDownloading:Z

.field public isVerticalVideo:Z

.field public isVideoThumbDownloadFinished:Z

.field public is_panorama:I

.field public language:Ljava/lang/String;

.field public lastPlayTime:J

.field public lastUpdateTime:J

.field public notification:Landroid/app/Notification;

.field public oip:Ljava/lang/String;

.field public playTime:I

.field public points:Lorg/json/JSONArray;

.field public preview:Lorg/json/JSONObject;

.field public progress:D

.field public retry:I

.field public savePath:Ljava/lang/String;

.field public seconds:I

.field public segCount:I

.field public segDownloadedSize:J

.field public segId:I

.field public segInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Ndn;",
            ">;"
        }
    .end annotation
.end field

.field public segsSeconds:[I

.field public segsSize:[J

.field public segsUrl:[Ljava/lang/String;

.field public segsfileId:[Ljava/lang/String;

.field public show_videoseq:I

.field public showepisode_total:I

.field public showid:Ljava/lang/String;

.field public showname:Ljava/lang/String;

.field public sid:Ljava/lang/String;

.field public size:J

.field public speed:Ljava/lang/String;

.field public startTime:J

.field public state:I

.field public subtitlesJsonArray:Lorg/json/JSONArray;

.field public subtitlesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/service/download/SubtitleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public taskId:Ljava/lang/String;

.field public thread:Lc8/Kdn;

.field public threadInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Odn;",
            ">;"
        }
    .end annotation
.end field

.field public threadNum:I

.field public title:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public versionCode:I

.field public videoDownloadPassword:Ljava/lang/String;

.field public video_type:[Ljava/lang/String;

.field public videoid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "mp4"

    aput-object v1, v0, v4

    const-string/jumbo v1, "3gp"

    aput-object v1, v0, v5

    const-string/jumbo v1, "flv"

    aput-object v1, v0, v6

    const-string/jumbo v1, "3gphd"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "flvhd"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "m3u8"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "hd2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "hd3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/youku/service/download/DownloadInfo;->FORMAT_STRINGS:[Ljava/lang/String;

    .line 103
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "mp4"

    aput-object v1, v0, v4

    const-string/jumbo v1, "3gp"

    aput-object v1, v0, v5

    const-string/jumbo v1, "flv"

    aput-object v1, v0, v6

    const-string/jumbo v1, "3gp"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "flv"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "m3u8"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "hd2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "flv"

    aput-object v2, v0, v1

    sput-object v0, Lcom/youku/service/download/DownloadInfo;->FORMAT_POSTFIX:[Ljava/lang/String;

    .line 470
    new-instance v0, Lc8/Mdn;

    invoke-direct {v0}, Lc8/Mdn;-><init>()V

    sput-object v0, Lcom/youku/service/download/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 929
    sput v3, Lcom/youku/service/download/DownloadInfo;->compareBy:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/service/download/DownloadInfo;->state:I

    .line 158
    iput v1, p0, Lcom/youku/service/download/DownloadInfo;->is_panorama:I

    .line 199
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/service/download/DownloadInfo;->segId:I

    .line 282
    iput-boolean v1, p0, Lcom/youku/service/download/DownloadInfo;->isShowWatermark:Z

    .line 307
    iput-boolean v1, p0, Lcom/youku/service/download/DownloadInfo;->isEncryption:Z

    .line 312
    iput v1, p0, Lcom/youku/service/download/DownloadInfo;->versionCode:I

    .line 317
    iput-boolean v1, p0, Lcom/youku/service/download/DownloadInfo;->isVerticalVideo:Z

    .line 323
    iput-boolean v1, p0, Lcom/youku/service/download/DownloadInfo;->isExposure:Z

    .line 327
    iput-boolean v1, p0, Lcom/youku/service/download/DownloadInfo;->isPushDownload:Z

    .line 344
    iput v1, p0, Lcom/youku/service/download/DownloadInfo;->retry:I

    .line 348
    iput-boolean v1, p0, Lcom/youku/service/download/DownloadInfo;->isThumbnailDownloading:Z

    .line 349
    iput v1, p0, Lcom/youku/service/download/DownloadInfo;->headerSize:I

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/service/download/DownloadInfo;->header_buf:[B

    .line 352
    const-string/jumbo v0, "0 B/S"

    iput-object v0, p0, Lcom/youku/service/download/DownloadInfo;->speed:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/service/download/DownloadInfo;->state:I

    .line 158
    iput v2, p0, Lcom/youku/service/download/DownloadInfo;->is_panorama:I

    .line 199
    iput v1, p0, Lcom/youku/service/download/DownloadInfo;->segId:I

    .line 282
    iput-boolean v2, p0, Lcom/youku/service/download/DownloadInfo;->isShowWatermark:Z

    .line 307
    iput-boolean v2, p0, Lcom/youku/service/download/DownloadInfo;->isEncryption:Z

    .line 312
    iput v2, p0, Lcom/youku/service/download/DownloadInfo;->versionCode:I

    .line 317
    iput-boolean v2, p0, Lcom/youku/service/download/DownloadInfo;->isVerticalVideo:Z

    .line 323
    iput-boolean v2, p0, Lcom/youku/service/download/DownloadInfo;->isExposure:Z

    .line 327
    iput-boolean v2, p0, Lcom/youku/service/download/DownloadInfo;->isPushDownload:Z

    .line 344
    iput v2, p0, Lcom/youku/service/download/DownloadInfo;->retry:I

    .line 348
    iput-boolean v2, p0, Lcom/youku/service/download/DownloadInfo;->isThumbnailDownloading:Z

    .line 349
    iput v2, p0, Lcom/youku/service/download/DownloadInfo;->headerSize:I

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/service/download/DownloadInfo;->header_buf:[B

    .line 352
    const-string/jumbo v0, "0 B/S"

    iput-object v0, p0, Lcom/youku/service/download/DownloadInfo;->speed:Ljava/lang/String;

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/DownloadInfo;->title:Ljava/lang/String;

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/service/download/DownloadInfo;->format:I

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/DownloadInfo;->language:Ljava/lang/String;

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/DownloadInfo;->showid:Ljava/lang/String;

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/DownloadInfo;->showname:Ljava/lang/String;

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/service/download/DownloadInfo;->show_videoseq:I

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/service/download/DownloadInfo;->showepisode_total:I

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/DownloadInfo;->cats:Ljava/lang/String;

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/service/download/DownloadInfo;->seconds:I

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/service/download/DownloadInfo;->state:I

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/service/download/DownloadInfo;->is_panorama:I

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->size:J

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->downloadedSize:J

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->createTime:J

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/youku/service/download/DownloadInfo;->canPlay:Z

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/service/download/DownloadInfo;->segCount:I

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/DownloadInfo;->token:Ljava/lang/String;

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/DownloadInfo;->oip:Ljava/lang/String;

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/DownloadInfo;->sid:Ljava/lang/String;

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/service/download/DownloadInfo;->playTime:I

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->lastPlayTime:J

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/DownloadInfo;->imgUrl:Ljava/lang/String;

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->startTime:J

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->getUrlTime:J

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->finishTime:J

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->lastUpdateTime:J

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/service/download/DownloadInfo;->exceptionId:I

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->progress:D

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/service/download/DownloadInfo;->retry:I

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/youku/service/download/DownloadInfo;->isThumbnailDownloading:Z

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/youku/service/download/DownloadInfo;->isVerticalVideo:Z

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/youku/service/download/DownloadInfo;->isExposure:Z

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    iput-boolean v1, p0, Lcom/youku/service/download/DownloadInfo;->isPushDownload:Z

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/DownloadInfo;->videoDownloadPassword:Ljava/lang/String;

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/DownloadInfo;->speed:Ljava/lang/String;

    .line 415
    return-void

    :cond_0
    move v0, v2

    .line 388
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 408
    goto :goto_1

    :cond_2
    move v0, v2

    .line 410
    goto :goto_2

    :cond_3
    move v0, v2

    .line 411
    goto :goto_3

    :cond_4
    move v1, v2

    .line 412
    goto :goto_4
.end method

.method public static getExceptionInfo(I)Ljava/lang/String;
    .locals 2
    .param p0, "exceptionId"    # I

    .prologue
    .line 659
    packed-switch p0, :pswitch_data_0

    .line 688
    :pswitch_0
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    .line 661
    :pswitch_1
    sget-object v0, Lc8/ddn;->context:Landroid/content/Context;

    sget v1, Lcom/youku/phone/R$string;->download_no_sdcard:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 663
    :pswitch_2
    sget-object v0, Lc8/ddn;->context:Landroid/content/Context;

    sget v1, Lcom/youku/phone/R$string;->tips_no_network:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 665
    :pswitch_3
    sget-object v0, Lc8/ddn;->context:Landroid/content/Context;

    sget v1, Lcom/youku/phone/R$string;->download_no_space:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 670
    :pswitch_4
    sget-object v0, Lc8/ddn;->context:Landroid/content/Context;

    sget v1, Lcom/youku/phone/R$string;->download_unknown_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 672
    :pswitch_5
    sget-object v0, Lc8/ddn;->context:Landroid/content/Context;

    sget v1, Lcom/youku/phone/R$string;->download_unknown_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 674
    :pswitch_6
    sget-object v0, Lc8/ddn;->context:Landroid/content/Context;

    sget v1, Lcom/youku/phone/R$string;->download_timeout:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 676
    :pswitch_7
    sget-object v0, Lc8/ddn;->context:Landroid/content/Context;

    sget v1, Lcom/youku/phone/R$string;->download_write_fail:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 678
    :pswitch_8
    sget-object v0, Lc8/ddn;->context:Landroid/content/Context;

    sget v1, Lcom/youku/phone/R$string;->download_unknown_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 680
    :pswitch_9
    sget-object v0, Lc8/ddn;->context:Landroid/content/Context;

    sget v1, Lcom/youku/phone/R$string;->download_network_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 682
    :pswitch_a
    const-string/jumbo v0, "\u4ec5\u4f1a\u5458\u7528\u6237\u53ef\u4e0b\u8f7d"

    goto :goto_0

    .line 684
    :pswitch_b
    const-string/jumbo v0, "\u4ec5\u8ba2\u9605\u7528\u6237\u53ef\u4e0b\u8f7d"

    goto :goto_0

    .line 659
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getTypeId(Ljava/lang/String;I)I
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "total"    # I

    .prologue
    const/4 v3, 0x1

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, "typeId":I
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->detail_tv:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 523
    if-le p1, v3, :cond_1

    .line 524
    const/16 v0, 0x130

    .line 577
    :cond_0
    :goto_0
    return v0

    .line 526
    :cond_1
    const/16 v0, 0x12f

    goto :goto_0

    .line 528
    :cond_2
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->detail_movie:I

    .line 529
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 530
    if-le p1, v3, :cond_3

    .line 531
    const/16 v0, 0x12e

    goto :goto_0

    .line 533
    :cond_3
    const/16 v0, 0x12d

    goto :goto_0

    .line 535
    :cond_4
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->detail_variety:I

    .line 536
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 537
    if-le p1, v3, :cond_5

    .line 538
    const/16 v0, 0x132

    goto :goto_0

    .line 540
    :cond_5
    const/16 v0, 0x131

    goto :goto_0

    .line 542
    :cond_6
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->detail_cartoon:I

    .line 543
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 544
    if-le p1, v3, :cond_7

    .line 545
    const/16 v0, 0x134

    goto :goto_0

    .line 547
    :cond_7
    const/16 v0, 0x133

    goto :goto_0

    .line 549
    :cond_8
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->detail_music:I

    .line 550
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 551
    const/16 v0, 0x135

    goto :goto_0

    .line 552
    :cond_9
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->detail_memory:I

    .line 553
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 554
    if-le p1, v3, :cond_a

    .line 555
    const/16 v0, 0x190

    goto/16 :goto_0

    .line 557
    :cond_a
    const/16 v0, 0x191

    goto/16 :goto_0

    .line 559
    :cond_b
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->detail_education:I

    .line 560
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 561
    if-le p1, v3, :cond_c

    .line 562
    const/16 v0, 0x193

    goto/16 :goto_0

    .line 564
    :cond_c
    const/16 v0, 0x192

    goto/16 :goto_0

    .line 566
    :cond_d
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->detail_ugc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 567
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 568
    const/16 v0, 0x194

    goto/16 :goto_0

    .line 569
    :cond_e
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->detail_special:I

    .line 570
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    if-le p1, v3, :cond_f

    .line 572
    const/16 v0, 0x196

    goto/16 :goto_0

    .line 574
    :cond_f
    const/16 v0, 0x195

    goto/16 :goto_0
.end method

.method public static jsonToDownloadInfo(Ljava/lang/String;)Lcom/youku/service/download/DownloadInfo;
    .locals 8
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 807
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 878
    :cond_0
    :goto_0
    return-object v1

    .line 809
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    .local v2, "o":Lorg/json/JSONObject;
    new-instance v1, Lcom/youku/service/download/DownloadInfo;

    invoke-direct {v1}, Lcom/youku/service/download/DownloadInfo;-><init>()V

    .line 815
    .local v1, "info":Lcom/youku/service/download/DownloadInfo;
    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/service/download/DownloadInfo;->title:Ljava/lang/String;

    .line 816
    const-string/jumbo v3, "vid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    .line 817
    const-string/jumbo v3, "showid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/service/download/DownloadInfo;->showid:Ljava/lang/String;

    .line 818
    const-string/jumbo v3, "format"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/youku/service/download/DownloadInfo;->format:I

    .line 819
    const-string/jumbo v3, "show_videoseq"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/youku/service/download/DownloadInfo;->show_videoseq:I

    .line 820
    const-string/jumbo v3, "showepisode_total"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/youku/service/download/DownloadInfo;->showepisode_total:I

    .line 821
    const-string/jumbo v3, "cats"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/service/download/DownloadInfo;->cats:Ljava/lang/String;

    .line 822
    const-string/jumbo v3, "seconds"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/youku/service/download/DownloadInfo;->seconds:I

    .line 823
    const-string/jumbo v3, "size"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/youku/service/download/DownloadInfo;->size:J

    .line 824
    const-string/jumbo v3, "segcount"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/youku/service/download/DownloadInfo;->segCount:I

    .line 825
    const-string/jumbo v3, "segsseconds"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/Iin;->string2int([Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, v1, Lcom/youku/service/download/DownloadInfo;->segsSeconds:[I

    .line 826
    const-string/jumbo v3, "videotype"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-array v3, v5, [Ljava/lang/String;

    :goto_1
    iput-object v3, v1, Lcom/youku/service/download/DownloadInfo;->video_type:[Ljava/lang/String;

    .line 827
    const-string/jumbo v3, "segssize"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/Iin;->string2long([Ljava/lang/String;)[J

    move-result-object v3

    iput-object v3, v1, Lcom/youku/service/download/DownloadInfo;->segsSize:[J

    .line 831
    const-string/jumbo v3, "taskid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    .line 832
    const-string/jumbo v3, "downloadedsize"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/youku/service/download/DownloadInfo;->downloadedSize:J

    .line 833
    const-string/jumbo v3, "segdownloadedsize"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/youku/service/download/DownloadInfo;->segDownloadedSize:J

    .line 834
    const-string/jumbo v3, "segstep"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/youku/service/download/DownloadInfo;->segId:I

    .line 835
    const-string/jumbo v3, "createtime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/youku/service/download/DownloadInfo;->createTime:J

    .line 836
    const-string/jumbo v3, "starttime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/youku/service/download/DownloadInfo;->startTime:J

    .line 837
    const-string/jumbo v3, "getUrlTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/youku/service/download/DownloadInfo;->getUrlTime:J

    .line 838
    const-string/jumbo v3, "finishtime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/youku/service/download/DownloadInfo;->finishTime:J

    .line 839
    const-string/jumbo v3, "state"

    const/4 v6, -0x1

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/youku/service/download/DownloadInfo;->state:I

    .line 840
    const-string/jumbo v3, "isPanorama"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/youku/service/download/DownloadInfo;->is_panorama:I

    .line 841
    const-string/jumbo v3, "exceptionid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/youku/service/download/DownloadInfo;->exceptionId:I

    .line 842
    const-string/jumbo v3, "progress"

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    iput-wide v6, v1, Lcom/youku/service/download/DownloadInfo;->progress:D

    .line 843
    const-string/jumbo v3, "points"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/service/download/DownloadInfo;->points:Lorg/json/JSONArray;

    .line 844
    const-string/jumbo v3, "preview"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/service/download/DownloadInfo;->preview:Lorg/json/JSONObject;

    .line 845
    const-string/jumbo v3, "isShowWatermark"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/youku/service/download/DownloadInfo;->isShowWatermark:Z

    .line 846
    const-string/jumbo v3, "subtitles"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/service/download/DownloadInfo;->subtitlesJsonArray:Lorg/json/JSONArray;

    .line 847
    invoke-virtual {v1}, Lcom/youku/service/download/DownloadInfo;->parseSubtitles()V

    .line 848
    const-string/jumbo v3, "isSubtitlesDownloadFinished"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/youku/service/download/DownloadInfo;->isSubtitlesDownloadFinished:Z

    .line 849
    const-string/jumbo v3, "isPreviewOK"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/youku/service/download/DownloadInfo;->isPreviewDownloadFinished:Z

    .line 850
    const-string/jumbo v3, "isVideoThumbOK"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/youku/service/download/DownloadInfo;->isVideoThumbDownloadFinished:Z

    .line 851
    const-string/jumbo v3, "isEncryption"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/youku/service/download/DownloadInfo;->isEncryption:Z

    .line 852
    const-string/jumbo v3, "versionCode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/youku/service/download/DownloadInfo;->versionCode:I

    .line 853
    const-string/jumbo v3, "isVerticalVideo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/youku/service/download/DownloadInfo;->isVerticalVideo:Z

    .line 854
    const-string/jumbo v3, "isExposure"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/youku/service/download/DownloadInfo;->isExposure:Z

    .line 855
    const-string/jumbo v3, "isPushDownload"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/youku/service/download/DownloadInfo;->isPushDownload:Z

    .line 856
    const-string/jumbo v3, "language"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/service/download/DownloadInfo;->language:Ljava/lang/String;

    .line 857
    const-string/jumbo v3, "playTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/youku/service/download/DownloadInfo;->playTime:I

    .line 858
    const-string/jumbo v3, "lastPlayTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/youku/service/download/DownloadInfo;->lastPlayTime:J

    .line 859
    const-string/jumbo v3, "imgUrl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/service/download/DownloadInfo;->imgUrl:Ljava/lang/String;

    .line 860
    const-string/jumbo v3, "showname"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/service/download/DownloadInfo;->showname:Ljava/lang/String;

    .line 861
    const-string/jumbo v3, "savepath"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    .line 864
    const-string/jumbo v3, "segInfos"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/service/download/DownloadInfo;->parseSegInfo(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/service/download/DownloadInfo;->segInfos:Ljava/util/ArrayList;

    .line 865
    iget v3, v1, Lcom/youku/service/download/DownloadInfo;->state:I

    if-ne v3, v4, :cond_3

    .line 866
    iput-boolean v4, v1, Lcom/youku/service/download/DownloadInfo;->canPlay:Z

    .line 876
    :goto_2
    const-string/jumbo v3, "ad"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/service/download/DownloadInfo;->ad:Lorg/json/JSONObject;

    .line 877
    const-string/jumbo v3, "video_download_password"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/service/download/DownloadInfo;->videoDownloadPassword:Ljava/lang/String;

    goto/16 :goto_0

    .line 810
    .end local v1    # "info":Lcom/youku/service/download/DownloadInfo;
    .end local v2    # "o":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "Download_DownloadInfo"

    const-string/jumbo v4, "DownloadInfo#jsonToDownloadInfo()"

    invoke-static {v3, v4, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 826
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "info":Lcom/youku/service/download/DownloadInfo;
    .restart local v2    # "o":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v3, "videotype"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 867
    :cond_3
    iget v3, v1, Lcom/youku/service/download/DownloadInfo;->versionCode:I

    const/16 v6, 0x64

    if-gt v3, v6, :cond_7

    .line 868
    iget-object v3, v1, Lcom/youku/service/download/DownloadInfo;->segInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/youku/service/download/DownloadInfo;->segInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 869
    :cond_4
    iget v3, v1, Lcom/youku/service/download/DownloadInfo;->segId:I

    if-le v3, v4, :cond_5

    move v3, v4

    :goto_3
    iput-boolean v3, v1, Lcom/youku/service/download/DownloadInfo;->canPlay:Z

    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_3

    .line 871
    :cond_6
    iget-object v3, v1, Lcom/youku/service/download/DownloadInfo;->segInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Ndn;

    invoke-virtual {v3}, Lc8/Ndn;->isComplete()Z

    move-result v3

    iput-boolean v3, v1, Lcom/youku/service/download/DownloadInfo;->canPlay:Z

    goto :goto_2

    .line 874
    :cond_7
    const-string/jumbo v3, "canPlay"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/youku/service/download/DownloadInfo;->canPlay:Z

    goto :goto_2
.end method

.method public static parseSegInfo(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "arr"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Ndn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1038
    if-nez p0, :cond_1

    const/4 v4, 0x0

    .line 1054
    :cond_0
    return-object v4

    .line 1039
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    .local v4, "segInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/service/download/DownloadInfo$SegInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1041
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1042
    .local v3, "obj":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 1043
    new-instance v1, Lc8/Ndn;

    invoke-direct {v1}, Lc8/Ndn;-><init>()V

    .line 1044
    .local v1, "info":Lc8/Ndn;
    const-string/jumbo v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lc8/Ndn;->id:I

    .line 1045
    const-string/jumbo v5, "fileid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lc8/Ndn;->fileid:Ljava/lang/String;

    .line 1046
    const-string/jumbo v5, "url"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lc8/Ndn;->url:Ljava/lang/String;

    .line 1047
    const-string/jumbo v5, "size"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lc8/Ndn;->size:J

    .line 1048
    const-string/jumbo v5, "curPos"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lc8/Ndn;->curPos:J

    .line 1049
    const-string/jumbo v5, "md5"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lc8/Ndn;->md5:Ljava/lang/String;

    .line 1050
    const-string/jumbo v5, "retryTime"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lc8/Ndn;->retryTime:I

    .line 1051
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    .end local v1    # "info":Lc8/Ndn;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/youku/service/download/DownloadInfo;)I
    .locals 8
    .param p1, "info"    # Lcom/youku/service/download/DownloadInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 934
    sget v3, Lcom/youku/service/download/DownloadInfo;->compareBy:I

    packed-switch v3, :pswitch_data_0

    .line 960
    :cond_0
    :goto_0
    return v0

    .line 936
    :pswitch_0
    iget v3, p0, Lcom/youku/service/download/DownloadInfo;->show_videoseq:I

    iget v4, p1, Lcom/youku/service/download/DownloadInfo;->show_videoseq:I

    if-gt v3, v4, :cond_0

    .line 938
    iget v0, p0, Lcom/youku/service/download/DownloadInfo;->show_videoseq:I

    iget v3, p1, Lcom/youku/service/download/DownloadInfo;->show_videoseq:I

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 939
    goto :goto_0

    :cond_1
    move v0, v2

    .line 941
    goto :goto_0

    .line 944
    :pswitch_1
    iget-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->createTime:J

    iget-wide v6, p1, Lcom/youku/service/download/DownloadInfo;->createTime:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    .line 946
    iget-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->createTime:J

    iget-wide v6, p1, Lcom/youku/service/download/DownloadInfo;->createTime:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    move v0, v1

    .line 947
    goto :goto_0

    :cond_2
    move v0, v2

    .line 949
    goto :goto_0

    .line 952
    :pswitch_2
    iget-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->finishTime:J

    iget-wide v6, p1, Lcom/youku/service/download/DownloadInfo;->finishTime:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 954
    iget-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->finishTime:J

    iget-wide v6, p1, Lcom/youku/service/download/DownloadInfo;->finishTime:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    move v0, v1

    .line 955
    goto :goto_0

    :cond_3
    move v0, v2

    .line 957
    goto :goto_0

    .line 934
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 46
    check-cast p1, Lcom/youku/service/download/DownloadInfo;

    invoke-virtual {p0, p1}, Lcom/youku/service/download/DownloadInfo;->compareTo(Lcom/youku/service/download/DownloadInfo;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method public getExceptionId()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lcom/youku/service/download/DownloadInfo;->exceptionId:I

    return v0
.end method

.method public getExceptionInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lcom/youku/service/download/DownloadInfo;->exceptionId:I

    invoke-static {v0}, Lcom/youku/service/download/DownloadInfo;->getExceptionInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/youku/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lc8/Dfh;->isHighEnd:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "/youku.m3u8"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "/1.3gp"

    goto :goto_0
.end method

.method public getProgress()D
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 636
    iget-wide v0, p0, Lcom/youku/service/download/DownloadInfo;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 637
    iput-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->progress:D

    .line 641
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/youku/service/download/DownloadInfo;->progress:D

    return-wide v0

    .line 638
    :cond_1
    iget-wide v0, p0, Lcom/youku/service/download/DownloadInfo;->progress:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    .line 639
    iget-wide v0, p0, Lcom/youku/service/download/DownloadInfo;->downloadedSize:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/youku/service/download/DownloadInfo;->size:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/youku/service/download/DownloadInfo;->progress:D

    goto :goto_0
.end method

.method public getSegInfoToJSONArray()Lorg/json/JSONArray;
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 1016
    iget-object v5, p0, Lcom/youku/service/download/DownloadInfo;->segInfos:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    move-object v0, v4

    .line 1034
    :cond_0
    :goto_0
    return-object v0

    .line 1017
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1019
    .local v0, "arr":Lorg/json/JSONArray;
    :try_start_0
    iget-object v5, p0, Lcom/youku/service/download/DownloadInfo;->segInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Ndn;

    .line 1020
    .local v2, "info":Lc8/Ndn;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1021
    .local v3, "obj":Lorg/json/JSONObject;
    const-string/jumbo v6, "id"

    iget v7, v2, Lc8/Ndn;->id:I

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1022
    const-string/jumbo v6, "fileid"

    iget-object v7, v2, Lc8/Ndn;->fileid:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1023
    const-string/jumbo v6, "url"

    iget-object v7, v2, Lc8/Ndn;->url:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1024
    const-string/jumbo v6, "size"

    iget-wide v8, v2, Lc8/Ndn;->size:J

    invoke-virtual {v3, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1025
    const-string/jumbo v6, "curPos"

    iget-wide v8, v2, Lc8/Ndn;->curPos:J

    invoke-virtual {v3, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1026
    const-string/jumbo v6, "md5"

    iget-object v7, v2, Lc8/Ndn;->md5:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1027
    const-string/jumbo v6, "retryTime"

    iget v7, v2, Lc8/Ndn;->retryTime:I

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1028
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1031
    .end local v2    # "info":Lc8/Ndn;
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1032
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "Download_DownloadInfo"

    invoke-static {v5, v1}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v4

    .line 1034
    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lcom/youku/service/download/DownloadInfo;->state:I

    return v0
.end method

.method public isPanorama()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 483
    iget v1, p0, Lcom/youku/service/download/DownloadInfo;->is_panorama:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeries()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 490
    iget-object v3, p0, Lcom/youku/service/download/DownloadInfo;->showid:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youku/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 510
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 492
    :cond_1
    iget-object v3, p0, Lcom/youku/service/download/DownloadInfo;->cats:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/youku/service/download/DownloadInfo;->cats:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    .line 493
    goto :goto_0

    .line 494
    :cond_3
    iget-object v3, p0, Lcom/youku/service/download/DownloadInfo;->cats:Ljava/lang/String;

    iget v4, p0, Lcom/youku/service/download/DownloadInfo;->showepisode_total:I

    invoke-static {v3, v4}, Lcom/youku/service/download/DownloadInfo;->getTypeId(Ljava/lang/String;I)I

    move-result v0

    .line 495
    .local v0, "typeId":I
    sparse-switch v0, :sswitch_data_0

    :cond_4
    move v1, v2

    .line 510
    goto :goto_0

    .line 505
    :sswitch_1
    iget v3, p0, Lcom/youku/service/download/DownloadInfo;->showepisode_total:I

    if-gt v3, v2, :cond_4

    goto :goto_0

    .line 495
    nop

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_0
        0x12f -> :sswitch_0
        0x131 -> :sswitch_0
        0x133 -> :sswitch_0
        0x135 -> :sswitch_1
        0x191 -> :sswitch_0
        0x192 -> :sswitch_0
        0x195 -> :sswitch_0
    .end sparse-switch
.end method

.method public notifyProgressChanged()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->downloadListener:Lc8/xen;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->downloadListener:Lc8/xen;

    invoke-interface {v0}, Lc8/xen;->onProgressChange()V

    .line 647
    :cond_0
    return-void
.end method

.method public parseSubtitles()V
    .locals 9

    .prologue
    .line 882
    iget-object v6, p0, Lcom/youku/service/download/DownloadInfo;->subtitlesJsonArray:Lorg/json/JSONArray;

    if-eqz v6, :cond_0

    .line 884
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/youku/service/download/DownloadInfo;->subtitlesList:Ljava/util/ArrayList;

    .line 885
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v6, p0, Lcom/youku/service/download/DownloadInfo;->subtitlesJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    .local v4, "n":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 886
    iget-object v6, p0, Lcom/youku/service/download/DownloadInfo;->subtitlesJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 887
    .local v5, "obj":Lorg/json/JSONObject;
    const-string/jumbo v6, "lang"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 888
    .local v3, "lang":Ljava/lang/String;
    const-string/jumbo v6, "attrachmenturl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, "downloadUrl":Ljava/lang/String;
    iget-object v6, p0, Lcom/youku/service/download/DownloadInfo;->subtitlesList:Ljava/util/ArrayList;

    new-instance v7, Lcom/youku/service/download/SubtitleInfo;

    iget-object v8, p0, Lcom/youku/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-direct {v7, v8, v3, v0}, Lcom/youku/service/download/SubtitleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 891
    .end local v0    # "downloadUrl":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "lang":Ljava/lang/String;
    .end local v4    # "n":I
    .end local v5    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 892
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "Download_"

    invoke-static {v6, v1}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 895
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method

.method public setExceptionId(I)V
    .locals 0
    .param p1, "exceptionId"    # I

    .prologue
    .line 650
    iput p1, p0, Lcom/youku/service/download/DownloadInfo;->exceptionId:I

    .line 651
    return-void
.end method

.method public setProgress()D
    .locals 4

    .prologue
    .line 630
    iget-wide v0, p0, Lcom/youku/service/download/DownloadInfo;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 631
    iget-wide v0, p0, Lcom/youku/service/download/DownloadInfo;->downloadedSize:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/youku/service/download/DownloadInfo;->size:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/youku/service/download/DownloadInfo;->progress:D

    .line 632
    :cond_0
    iget-wide v0, p0, Lcom/youku/service/download/DownloadInfo;->progress:D

    return-wide v0
.end method

.method public setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 581
    iget v0, p0, Lcom/youku/service/download/DownloadInfo;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    iput p1, p0, Lcom/youku/service/download/DownloadInfo;->state:I

    .line 587
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->downloadListener:Lc8/xen;

    if-eqz v0, :cond_0

    .line 588
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 590
    :pswitch_0
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->downloadListener:Lc8/xen;

    invoke-interface {v0}, Lc8/xen;->onInit()V

    goto :goto_0

    .line 593
    :pswitch_1
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->downloadListener:Lc8/xen;

    invoke-interface {v0}, Lc8/xen;->onStart()V

    goto :goto_0

    .line 596
    :pswitch_2
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->downloadListener:Lc8/xen;

    invoke-interface {v0}, Lc8/xen;->onPause()V

    goto :goto_0

    .line 599
    :pswitch_3
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->downloadListener:Lc8/xen;

    invoke-interface {v0}, Lc8/xen;->onFinish()V

    goto :goto_0

    .line 602
    :pswitch_4
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->downloadListener:Lc8/xen;

    invoke-interface {v0}, Lc8/xen;->onCancel()V

    goto :goto_0

    .line 605
    :pswitch_5
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->downloadListener:Lc8/xen;

    invoke-interface {v0}, Lc8/xen;->onException()V

    goto :goto_0

    .line 608
    :pswitch_6
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->downloadListener:Lc8/xen;

    invoke-interface {v0}, Lc8/xen;->onProhibited()V

    goto :goto_0

    .line 611
    :pswitch_7
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->downloadListener:Lc8/xen;

    invoke-interface {v0}, Lc8/xen;->onWaiting()V

    goto :goto_0

    .line 588
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 745
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 747
    .local v0, "o":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/youku/service/download/DownloadInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 748
    const-string/jumbo v1, "vid"

    iget-object v2, p0, Lcom/youku/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 749
    const-string/jumbo v1, "showid"

    iget-object v2, p0, Lcom/youku/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 750
    const-string/jumbo v1, "showname"

    iget-object v2, p0, Lcom/youku/service/download/DownloadInfo;->showname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 751
    const-string/jumbo v1, "format"

    iget v2, p0, Lcom/youku/service/download/DownloadInfo;->format:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 752
    const-string/jumbo v1, "show_videoseq"

    iget v2, p0, Lcom/youku/service/download/DownloadInfo;->show_videoseq:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 753
    const-string/jumbo v1, "showepisode_total"

    iget v2, p0, Lcom/youku/service/download/DownloadInfo;->showepisode_total:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 754
    const-string/jumbo v1, "cats"

    iget-object v2, p0, Lcom/youku/service/download/DownloadInfo;->cats:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 755
    const-string/jumbo v1, "seconds"

    iget v2, p0, Lcom/youku/service/download/DownloadInfo;->seconds:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 756
    const-string/jumbo v1, "size"

    iget-wide v2, p0, Lcom/youku/service/download/DownloadInfo;->size:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 757
    const-string/jumbo v1, "segcount"

    iget v2, p0, Lcom/youku/service/download/DownloadInfo;->segCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 758
    const-string/jumbo v1, "segsseconds"

    iget-object v2, p0, Lcom/youku/service/download/DownloadInfo;->segsSeconds:[I

    invoke-static {v2}, Lc8/Iin;->join([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 759
    const-string/jumbo v1, "videotype"

    iget-object v2, p0, Lcom/youku/service/download/DownloadInfo;->video_type:[Ljava/lang/String;

    invoke-static {v2}, Lc8/Iin;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 760
    const-string/jumbo v1, "segssize"

    iget-object v2, p0, Lcom/youku/service/download/DownloadInfo;->segsSize:[J

    invoke-static {v2}, Lc8/Iin;->join([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 761
    const-string/jumbo v1, "taskid"

    iget-object v2, p0, Lcom/youku/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 762
    const-string/jumbo v1, "downloadedsize"

    iget-wide v2, p0, Lcom/youku/service/download/DownloadInfo;->downloadedSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 763
    const-string/jumbo v1, "segdownloadedsize"

    iget-wide v2, p0, Lcom/youku/service/download/DownloadInfo;->segDownloadedSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 764
    const-string/jumbo v1, "segstep"

    iget v2, p0, Lcom/youku/service/download/DownloadInfo;->segId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 765
    const-string/jumbo v1, "createtime"

    iget-wide v2, p0, Lcom/youku/service/download/DownloadInfo;->createTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 766
    const-string/jumbo v1, "starttime"

    iget-wide v2, p0, Lcom/youku/service/download/DownloadInfo;->startTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 767
    const-string/jumbo v1, "getUrlTime"

    iget-wide v2, p0, Lcom/youku/service/download/DownloadInfo;->getUrlTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 768
    const-string/jumbo v1, "finishtime"

    iget-wide v2, p0, Lcom/youku/service/download/DownloadInfo;->finishTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 770
    const-string/jumbo v1, "state"

    iget v2, p0, Lcom/youku/service/download/DownloadInfo;->state:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 771
    const-string/jumbo v1, "isPanorama"

    iget v2, p0, Lcom/youku/service/download/DownloadInfo;->is_panorama:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 772
    const-string/jumbo v1, "exceptionid"

    iget v2, p0, Lcom/youku/service/download/DownloadInfo;->exceptionId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 773
    const-string/jumbo v1, "progress"

    iget-wide v2, p0, Lcom/youku/service/download/DownloadInfo;->progress:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 774
    const-string/jumbo v1, "points"

    iget-object v2, p0, Lcom/youku/service/download/DownloadInfo;->points:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 775
    const-string/jumbo v1, "preview"

    iget-object v2, p0, Lcom/youku/service/download/DownloadInfo;->preview:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 776
    const-string/jumbo v1, "isShowWatermark"

    iget-boolean v2, p0, Lcom/youku/service/download/DownloadInfo;->isShowWatermark:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 777
    const-string/jumbo v1, "subtitles"

    iget-object v2, p0, Lcom/youku/service/download/DownloadInfo;->subtitlesJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 778
    const-string/jumbo v1, "isSubtitlesDownloadFinished"

    iget-boolean v2, p0, Lcom/youku/service/download/DownloadInfo;->isSubtitlesDownloadFinished:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 779
    const-string/jumbo v1, "isPreviewOK"

    iget-boolean v2, p0, Lcom/youku/service/download/DownloadInfo;->isPreviewDownloadFinished:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 780
    const-string/jumbo v1, "isVideoThumbOK"

    iget-boolean v2, p0, Lcom/youku/service/download/DownloadInfo;->isVideoThumbDownloadFinished:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 781
    const-string/jumbo v1, "isEncryption"

    iget-boolean v2, p0, Lcom/youku/service/download/DownloadInfo;->isEncryption:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 782
    const-string/jumbo v1, "versionCode"

    iget v2, p0, Lcom/youku/service/download/DownloadInfo;->versionCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 783
    const-string/jumbo v1, "isVerticalVideo"

    iget-boolean v2, p0, Lcom/youku/service/download/DownloadInfo;->isVerticalVideo:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 784
    const-string/jumbo v1, "isExposure"

    iget-boolean v2, p0, Lcom/youku/service/download/DownloadInfo;->isExposure:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 785
    const-string/jumbo v1, "isPushDownload"

    iget-boolean v2, p0, Lcom/youku/service/download/DownloadInfo;->isPushDownload:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 786
    const-string/jumbo v1, "language"

    iget-object v2, p0, Lcom/youku/service/download/DownloadInfo;->language:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 787
    const-string/jumbo v1, "playTime"

    iget v2, p0, Lcom/youku/service/download/DownloadInfo;->playTime:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 788
    const-string/jumbo v1, "lastPlayTime"

    iget-wide v2, p0, Lcom/youku/service/download/DownloadInfo;->lastPlayTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 789
    const-string/jumbo v1, "imgUrl"

    iget-object v2, p0, Lcom/youku/service/download/DownloadInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 790
    const-string/jumbo v1, "savepath"

    iget-object v2, p0, Lcom/youku/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 793
    const-string/jumbo v1, "segInfos"

    invoke-virtual {p0}, Lcom/youku/service/download/DownloadInfo;->getSegInfoToJSONArray()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 794
    const-string/jumbo v1, "canPlay"

    iget-boolean v2, p0, Lcom/youku/service/download/DownloadInfo;->canPlay:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 795
    const-string/jumbo v1, "ad"

    iget-object v2, p0, Lcom/youku/service/download/DownloadInfo;->ad:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 796
    const-string/jumbo v1, "video_download_password"

    iget-object v2, p0, Lcom/youku/service/download/DownloadInfo;->videoDownloadPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    :goto_0
    return-object v0

    .line 799
    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 965
    invoke-virtual {p0}, Lcom/youku/service/download/DownloadInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 966
    .local v0, "o":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 424
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 426
    iget v0, p0, Lcom/youku/service/download/DownloadInfo;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->showname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 430
    iget v0, p0, Lcom/youku/service/download/DownloadInfo;->show_videoseq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    iget v0, p0, Lcom/youku/service/download/DownloadInfo;->showepisode_total:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->cats:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 433
    iget v0, p0, Lcom/youku/service/download/DownloadInfo;->seconds:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget v0, p0, Lcom/youku/service/download/DownloadInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    iget v0, p0, Lcom/youku/service/download/DownloadInfo;->is_panorama:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 437
    iget-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->size:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 438
    iget-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->downloadedSize:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 439
    iget-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->createTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 440
    iget-boolean v0, p0, Lcom/youku/service/download/DownloadInfo;->canPlay:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 441
    iget v0, p0, Lcom/youku/service/download/DownloadInfo;->segCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->oip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->sid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    iget v0, p0, Lcom/youku/service/download/DownloadInfo;->playTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    iget-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->lastPlayTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 450
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 451
    iget-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->startTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 452
    iget-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->getUrlTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 453
    iget-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->finishTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 454
    iget-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->lastUpdateTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 455
    iget v0, p0, Lcom/youku/service/download/DownloadInfo;->exceptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    iget-wide v4, p0, Lcom/youku/service/download/DownloadInfo;->progress:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 458
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 459
    iget v0, p0, Lcom/youku/service/download/DownloadInfo;->retry:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    iget-boolean v0, p0, Lcom/youku/service/download/DownloadInfo;->isThumbnailDownloading:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 462
    iget-boolean v0, p0, Lcom/youku/service/download/DownloadInfo;->isVerticalVideo:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 463
    iget-boolean v0, p0, Lcom/youku/service/download/DownloadInfo;->isExposure:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 464
    iget-boolean v0, p0, Lcom/youku/service/download/DownloadInfo;->isPushDownload:Z

    if-eqz v0, :cond_4

    :goto_4
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 465
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->videoDownloadPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/youku/service/download/DownloadInfo;->speed:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 467
    return-void

    :cond_0
    move v0, v2

    .line 440
    goto :goto_0

    :cond_1
    move v0, v2

    .line 460
    goto :goto_1

    :cond_2
    move v0, v2

    .line 462
    goto :goto_2

    :cond_3
    move v0, v2

    .line 463
    goto :goto_3

    :cond_4
    move v1, v2

    .line 464
    goto :goto_4
.end method
