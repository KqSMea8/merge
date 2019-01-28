.class public Lc8/VHd;
.super Ljava/lang/Object;
.source "ANRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/THd;,
        Lc8/RHd;,
        Lc8/UHd;,
        Lc8/SHd;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc8/VHd;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final JSON_MEDIA_TYPE:Lc8/xId;

.field private static final MEDIA_TYPE_MARKDOWN:Lc8/xId;

.field private static final TAG:Ljava/lang/String;

.field private static final sDecodeLock:Ljava/lang/Object;


# instance fields
.field private call:Lc8/kId;

.field private customMediaType:Lc8/xId;

.field private isCancelled:Z

.field private isDelivered:Z

.field private mAnalyticsListener:Lc8/MId;

.field private mBitmapRequestListener:Lc8/NId;

.field private mBodyParameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mByte:[B

.field private mDecodeConfig:Landroid/graphics/Bitmap$Config;

.field private mDirPath:Ljava/lang/String;

.field private mDownloadListener:Lc8/PId;

.field private mDownloadProgressListener:Lc8/QId;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mFile:Ljava/io/File;

.field private mFileName:Ljava/lang/String;

.field private mHeadersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mJSONArrayRequestListener:Lc8/RId;

.field private mJSONObjectRequestListener:Lc8/SId;

.field private mJsonArray:Lorg/json/JSONArray;

.field private mJsonObject:Lorg/json/JSONObject;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMethod:I

.field private mMultiPartFileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiPartParameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOkHttpResponseAndBitmapRequestListener:Lc8/TId;

.field private mOkHttpResponseAndJSONArrayRequestListener:Lc8/UId;

.field private mOkHttpResponseAndJSONObjectRequestListener:Lc8/VId;

.field private mOkHttpResponseAndParsedRequestListener:Lc8/WId;

.field private mOkHttpResponseAndStringRequestListener:Lc8/XId;

.field private mOkHttpResponseListener:Lc8/YId;

.field private mParsedRequestListener:Lc8/ZId;

.field private mPathParameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPercentageThresholdForCancelling:I

.field private mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

.field private mProgress:I

.field private mQueryParameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestType:I

.field private mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mStringBody:Ljava/lang/String;

.field private mStringRequestListener:Lc8/bJd;

.field private mTag:Ljava/lang/Object;

.field private mType:Ljava/lang/reflect/Type;

.field private mUploadProgressListener:Lc8/cJd;

.field private mUrl:Ljava/lang/String;

.field private mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserAgent:Ljava/lang/String;

.field private sequenceNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lc8/VHd;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/VHd;->TAG:Ljava/lang/String;

    .line 95
    const-string/jumbo v0, "application/json; charset=utf-8"

    .line 96
    invoke-static {v0}, Lc8/xId;->parse(Ljava/lang/String;)Lc8/xId;

    move-result-object v0

    sput-object v0, Lc8/VHd;->JSON_MEDIA_TYPE:Lc8/xId;

    .line 97
    const-string/jumbo v0, "text/x-markdown; charset=utf-8"

    .line 98
    invoke-static {v0}, Lc8/xId;->parse(Ljava/lang/String;)Lc8/xId;

    move-result-object v0

    sput-object v0, Lc8/VHd;->MEDIA_TYPE_MARKDOWN:Lc8/xId;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/VHd;->sDecodeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc8/RHd;)V
    .locals 3
    .param p1, "builder"    # Lc8/RHd;

    .prologue
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mHeadersMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mBodyParameterMap:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mMultiPartParameterMap:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mQueryParameterMap:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mPathParameterMap:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mMultiPartFileMap:Ljava/util/HashMap;

    .line 90
    iput-object v1, p0, Lc8/VHd;->mJsonObject:Lorg/json/JSONObject;

    .line 91
    iput-object v1, p0, Lc8/VHd;->mJsonArray:Lorg/json/JSONArray;

    .line 92
    iput-object v1, p0, Lc8/VHd;->mStringBody:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lc8/VHd;->mByte:[B

    .line 94
    iput-object v1, p0, Lc8/VHd;->mFile:Ljava/io/File;

    .line 99
    iput-object v1, p0, Lc8/VHd;->customMediaType:Lc8/xId;

    .line 107
    iput v2, p0, Lc8/VHd;->mPercentageThresholdForCancelling:I

    .line 129
    iput-object v1, p0, Lc8/VHd;->mExecutor:Ljava/util/concurrent/Executor;

    .line 131
    iput-object v1, p0, Lc8/VHd;->mUserAgent:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lc8/VHd;->mType:Ljava/lang/reflect/Type;

    .line 175
    const/4 v0, 0x1

    iput v0, p0, Lc8/VHd;->mRequestType:I

    .line 176
    iput v2, p0, Lc8/VHd;->mMethod:I

    .line 177
    invoke-static {p1}, Lc8/RHd;->access$3000(Lc8/RHd;)Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 178
    invoke-static {p1}, Lc8/RHd;->access$3100(Lc8/RHd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mUrl:Ljava/lang/String;

    .line 179
    invoke-static {p1}, Lc8/RHd;->access$3200(Lc8/RHd;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mTag:Ljava/lang/Object;

    .line 180
    invoke-static {p1}, Lc8/RHd;->access$3300(Lc8/RHd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mDirPath:Ljava/lang/String;

    .line 181
    invoke-static {p1}, Lc8/RHd;->access$3400(Lc8/RHd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mFileName:Ljava/lang/String;

    .line 182
    invoke-static {p1}, Lc8/RHd;->access$3500(Lc8/RHd;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mHeadersMap:Ljava/util/HashMap;

    .line 183
    invoke-static {p1}, Lc8/RHd;->access$3600(Lc8/RHd;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mQueryParameterMap:Ljava/util/HashMap;

    .line 184
    invoke-static {p1}, Lc8/RHd;->access$3700(Lc8/RHd;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mPathParameterMap:Ljava/util/HashMap;

    .line 185
    invoke-static {p1}, Lc8/RHd;->access$3800(Lc8/RHd;)I

    move-result v0

    iput v0, p0, Lc8/VHd;->mPercentageThresholdForCancelling:I

    .line 186
    invoke-static {p1}, Lc8/RHd;->access$3900(Lc8/RHd;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mExecutor:Ljava/util/concurrent/Executor;

    .line 187
    invoke-static {p1}, Lc8/RHd;->access$4000(Lc8/RHd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mUserAgent:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public constructor <init>(Lc8/SHd;)V
    .locals 3
    .param p1, "builder"    # Lc8/SHd;

    .prologue
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mHeadersMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mBodyParameterMap:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mMultiPartParameterMap:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mQueryParameterMap:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mPathParameterMap:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mMultiPartFileMap:Ljava/util/HashMap;

    .line 90
    iput-object v1, p0, Lc8/VHd;->mJsonObject:Lorg/json/JSONObject;

    .line 91
    iput-object v1, p0, Lc8/VHd;->mJsonArray:Lorg/json/JSONArray;

    .line 92
    iput-object v1, p0, Lc8/VHd;->mStringBody:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lc8/VHd;->mByte:[B

    .line 94
    iput-object v1, p0, Lc8/VHd;->mFile:Ljava/io/File;

    .line 99
    iput-object v1, p0, Lc8/VHd;->customMediaType:Lc8/xId;

    .line 107
    iput v2, p0, Lc8/VHd;->mPercentageThresholdForCancelling:I

    .line 129
    iput-object v1, p0, Lc8/VHd;->mExecutor:Ljava/util/concurrent/Executor;

    .line 131
    iput-object v1, p0, Lc8/VHd;->mUserAgent:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lc8/VHd;->mType:Ljava/lang/reflect/Type;

    .line 135
    iput v2, p0, Lc8/VHd;->mRequestType:I

    .line 136
    invoke-static {p1}, Lc8/SHd;->access$000(Lc8/SHd;)I

    move-result v0

    iput v0, p0, Lc8/VHd;->mMethod:I

    .line 137
    invoke-static {p1}, Lc8/SHd;->access$100(Lc8/SHd;)Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 138
    invoke-static {p1}, Lc8/SHd;->access$200(Lc8/SHd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mUrl:Ljava/lang/String;

    .line 139
    invoke-static {p1}, Lc8/SHd;->access$300(Lc8/SHd;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mTag:Ljava/lang/Object;

    .line 140
    invoke-static {p1}, Lc8/SHd;->access$400(Lc8/SHd;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mHeadersMap:Ljava/util/HashMap;

    .line 141
    invoke-static {p1}, Lc8/SHd;->access$500(Lc8/SHd;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    .line 142
    invoke-static {p1}, Lc8/SHd;->access$600(Lc8/SHd;)I

    move-result v0

    iput v0, p0, Lc8/VHd;->mMaxHeight:I

    .line 143
    invoke-static {p1}, Lc8/SHd;->access$700(Lc8/SHd;)I

    move-result v0

    iput v0, p0, Lc8/VHd;->mMaxWidth:I

    .line 144
    invoke-static {p1}, Lc8/SHd;->access$800(Lc8/SHd;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 145
    invoke-static {p1}, Lc8/SHd;->access$900(Lc8/SHd;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mQueryParameterMap:Ljava/util/HashMap;

    .line 146
    invoke-static {p1}, Lc8/SHd;->access$1000(Lc8/SHd;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mPathParameterMap:Ljava/util/HashMap;

    .line 147
    invoke-static {p1}, Lc8/SHd;->access$1100(Lc8/SHd;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mExecutor:Ljava/util/concurrent/Executor;

    .line 148
    invoke-static {p1}, Lc8/SHd;->access$1200(Lc8/SHd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mUserAgent:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public constructor <init>(Lc8/THd;)V
    .locals 2
    .param p1, "builder"    # Lc8/THd;

    .prologue
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    const/4 v1, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mHeadersMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mBodyParameterMap:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mMultiPartParameterMap:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mQueryParameterMap:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mPathParameterMap:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mMultiPartFileMap:Ljava/util/HashMap;

    .line 90
    iput-object v1, p0, Lc8/VHd;->mJsonObject:Lorg/json/JSONObject;

    .line 91
    iput-object v1, p0, Lc8/VHd;->mJsonArray:Lorg/json/JSONArray;

    .line 92
    iput-object v1, p0, Lc8/VHd;->mStringBody:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lc8/VHd;->mByte:[B

    .line 94
    iput-object v1, p0, Lc8/VHd;->mFile:Ljava/io/File;

    .line 99
    iput-object v1, p0, Lc8/VHd;->customMediaType:Lc8/xId;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lc8/VHd;->mPercentageThresholdForCancelling:I

    .line 129
    iput-object v1, p0, Lc8/VHd;->mExecutor:Ljava/util/concurrent/Executor;

    .line 131
    iput-object v1, p0, Lc8/VHd;->mUserAgent:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lc8/VHd;->mType:Ljava/lang/reflect/Type;

    .line 191
    const/4 v0, 0x2

    iput v0, p0, Lc8/VHd;->mRequestType:I

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Lc8/VHd;->mMethod:I

    .line 193
    invoke-static {p1}, Lc8/THd;->access$4100(Lc8/THd;)Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 194
    invoke-static {p1}, Lc8/THd;->access$4200(Lc8/THd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mUrl:Ljava/lang/String;

    .line 195
    invoke-static {p1}, Lc8/THd;->access$4300(Lc8/THd;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mTag:Ljava/lang/Object;

    .line 196
    invoke-static {p1}, Lc8/THd;->access$4400(Lc8/THd;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mHeadersMap:Ljava/util/HashMap;

    .line 197
    invoke-static {p1}, Lc8/THd;->access$4500(Lc8/THd;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mQueryParameterMap:Ljava/util/HashMap;

    .line 198
    invoke-static {p1}, Lc8/THd;->access$4600(Lc8/THd;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mPathParameterMap:Ljava/util/HashMap;

    .line 199
    invoke-static {p1}, Lc8/THd;->access$4700(Lc8/THd;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mMultiPartParameterMap:Ljava/util/HashMap;

    .line 200
    invoke-static {p1}, Lc8/THd;->access$4800(Lc8/THd;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mMultiPartFileMap:Ljava/util/HashMap;

    .line 201
    invoke-static {p1}, Lc8/THd;->access$4900(Lc8/THd;)I

    move-result v0

    iput v0, p0, Lc8/VHd;->mPercentageThresholdForCancelling:I

    .line 202
    invoke-static {p1}, Lc8/THd;->access$5000(Lc8/THd;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mExecutor:Ljava/util/concurrent/Executor;

    .line 203
    invoke-static {p1}, Lc8/THd;->access$5100(Lc8/THd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mUserAgent:Ljava/lang/String;

    .line 204
    invoke-static {p1}, Lc8/THd;->access$5200(Lc8/THd;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {p1}, Lc8/THd;->access$5200(Lc8/THd;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/xId;->parse(Ljava/lang/String;)Lc8/xId;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->customMediaType:Lc8/xId;

    .line 207
    :cond_0
    return-void
.end method

.method public constructor <init>(Lc8/UHd;)V
    .locals 3
    .param p1, "builder"    # Lc8/UHd;

    .prologue
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mHeadersMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mBodyParameterMap:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mMultiPartParameterMap:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mQueryParameterMap:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mPathParameterMap:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/VHd;->mMultiPartFileMap:Ljava/util/HashMap;

    .line 90
    iput-object v1, p0, Lc8/VHd;->mJsonObject:Lorg/json/JSONObject;

    .line 91
    iput-object v1, p0, Lc8/VHd;->mJsonArray:Lorg/json/JSONArray;

    .line 92
    iput-object v1, p0, Lc8/VHd;->mStringBody:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lc8/VHd;->mByte:[B

    .line 94
    iput-object v1, p0, Lc8/VHd;->mFile:Ljava/io/File;

    .line 99
    iput-object v1, p0, Lc8/VHd;->customMediaType:Lc8/xId;

    .line 107
    iput v2, p0, Lc8/VHd;->mPercentageThresholdForCancelling:I

    .line 129
    iput-object v1, p0, Lc8/VHd;->mExecutor:Ljava/util/concurrent/Executor;

    .line 131
    iput-object v1, p0, Lc8/VHd;->mUserAgent:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lc8/VHd;->mType:Ljava/lang/reflect/Type;

    .line 152
    iput v2, p0, Lc8/VHd;->mRequestType:I

    .line 153
    invoke-static {p1}, Lc8/UHd;->access$1300(Lc8/UHd;)I

    move-result v0

    iput v0, p0, Lc8/VHd;->mMethod:I

    .line 154
    invoke-static {p1}, Lc8/UHd;->access$1400(Lc8/UHd;)Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    .line 155
    invoke-static {p1}, Lc8/UHd;->access$1500(Lc8/UHd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mUrl:Ljava/lang/String;

    .line 156
    invoke-static {p1}, Lc8/UHd;->access$1600(Lc8/UHd;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mTag:Ljava/lang/Object;

    .line 157
    invoke-static {p1}, Lc8/UHd;->access$1700(Lc8/UHd;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mHeadersMap:Ljava/util/HashMap;

    .line 158
    invoke-static {p1}, Lc8/UHd;->access$1800(Lc8/UHd;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mBodyParameterMap:Ljava/util/HashMap;

    .line 159
    invoke-static {p1}, Lc8/UHd;->access$1900(Lc8/UHd;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    .line 160
    invoke-static {p1}, Lc8/UHd;->access$2000(Lc8/UHd;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mQueryParameterMap:Ljava/util/HashMap;

    .line 161
    invoke-static {p1}, Lc8/UHd;->access$2100(Lc8/UHd;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mPathParameterMap:Ljava/util/HashMap;

    .line 162
    invoke-static {p1}, Lc8/UHd;->access$2200(Lc8/UHd;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mJsonObject:Lorg/json/JSONObject;

    .line 163
    invoke-static {p1}, Lc8/UHd;->access$2300(Lc8/UHd;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mJsonArray:Lorg/json/JSONArray;

    .line 164
    invoke-static {p1}, Lc8/UHd;->access$2400(Lc8/UHd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mStringBody:Ljava/lang/String;

    .line 165
    invoke-static {p1}, Lc8/UHd;->access$2500(Lc8/UHd;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mFile:Ljava/io/File;

    .line 166
    invoke-static {p1}, Lc8/UHd;->access$2600(Lc8/UHd;)[B

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mByte:[B

    .line 167
    invoke-static {p1}, Lc8/UHd;->access$2700(Lc8/UHd;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mExecutor:Ljava/util/concurrent/Executor;

    .line 168
    invoke-static {p1}, Lc8/UHd;->access$2800(Lc8/UHd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->mUserAgent:Ljava/lang/String;

    .line 169
    invoke-static {p1}, Lc8/UHd;->access$2900(Lc8/UHd;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {p1}, Lc8/UHd;->access$2900(Lc8/UHd;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/xId;->parse(Ljava/lang/String;)Lc8/xId;

    move-result-object v0

    iput-object v0, p0, Lc8/VHd;->customMediaType:Lc8/xId;

    .line 172
    :cond_0
    return-void
.end method

.method static synthetic access$5400(Lc8/VHd;)Z
    .locals 1
    .param p0, "x0"    # Lc8/VHd;

    .prologue
    .line 70
    iget-boolean v0, p0, Lc8/VHd;->isCancelled:Z

    return v0
.end method

.method static synthetic access$5500(Lc8/VHd;)Lc8/PId;
    .locals 1
    .param p0, "x0"    # Lc8/VHd;

    .prologue
    .line 70
    iget-object v0, p0, Lc8/VHd;->mDownloadListener:Lc8/PId;

    return-object v0
.end method

.method static synthetic access$5602(Lc8/VHd;I)I
    .locals 0
    .param p0, "x0"    # Lc8/VHd;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lc8/VHd;->mProgress:I

    return p1
.end method

.method static synthetic access$5700(Lc8/VHd;)Lc8/cJd;
    .locals 1
    .param p0, "x0"    # Lc8/VHd;

    .prologue
    .line 70
    iget-object v0, p0, Lc8/VHd;->mUploadProgressListener:Lc8/cJd;

    return-object v0
.end method

.method static synthetic access$5800(Lc8/VHd;Lc8/WHd;)V
    .locals 0
    .param p0, "x0"    # Lc8/VHd;
    .param p1, "x1"    # Lc8/WHd;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lc8/VHd;->deliverSuccessResponse(Lc8/WHd;)V

    return-void
.end method

.method static synthetic access$5900(Lc8/VHd;)Lc8/YId;
    .locals 1
    .param p0, "x0"    # Lc8/VHd;

    .prologue
    .line 70
    iget-object v0, p0, Lc8/VHd;->mOkHttpResponseListener:Lc8/YId;

    return-object v0
.end method

.method private deliverErrorResponse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    .locals 1
    .param p1, "anError"    # Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    .prologue
    .line 673
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    iget-object v0, p0, Lc8/VHd;->mJSONObjectRequestListener:Lc8/SId;

    if-eqz v0, :cond_1

    .line 674
    iget-object v0, p0, Lc8/VHd;->mJSONObjectRequestListener:Lc8/SId;

    invoke-interface {v0, p1}, Lc8/SId;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    iget-object v0, p0, Lc8/VHd;->mJSONArrayRequestListener:Lc8/RId;

    if-eqz v0, :cond_2

    .line 676
    iget-object v0, p0, Lc8/VHd;->mJSONArrayRequestListener:Lc8/RId;

    invoke-interface {v0, p1}, Lc8/RId;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0

    .line 677
    :cond_2
    iget-object v0, p0, Lc8/VHd;->mStringRequestListener:Lc8/bJd;

    if-eqz v0, :cond_3

    .line 678
    iget-object v0, p0, Lc8/VHd;->mStringRequestListener:Lc8/bJd;

    invoke-interface {v0, p1}, Lc8/bJd;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0

    .line 679
    :cond_3
    iget-object v0, p0, Lc8/VHd;->mBitmapRequestListener:Lc8/NId;

    if-eqz v0, :cond_4

    .line 680
    iget-object v0, p0, Lc8/VHd;->mBitmapRequestListener:Lc8/NId;

    invoke-interface {v0, p1}, Lc8/NId;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0

    .line 681
    :cond_4
    iget-object v0, p0, Lc8/VHd;->mParsedRequestListener:Lc8/ZId;

    if-eqz v0, :cond_5

    .line 682
    iget-object v0, p0, Lc8/VHd;->mParsedRequestListener:Lc8/ZId;

    invoke-interface {v0, p1}, Lc8/ZId;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0

    .line 683
    :cond_5
    iget-object v0, p0, Lc8/VHd;->mOkHttpResponseAndJSONObjectRequestListener:Lc8/VId;

    if-eqz v0, :cond_6

    .line 684
    iget-object v0, p0, Lc8/VHd;->mOkHttpResponseAndJSONObjectRequestListener:Lc8/VId;

    invoke-interface {v0, p1}, Lc8/VId;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0

    .line 685
    :cond_6
    iget-object v0, p0, Lc8/VHd;->mOkHttpResponseAndJSONArrayRequestListener:Lc8/UId;

    if-eqz v0, :cond_7

    .line 686
    iget-object v0, p0, Lc8/VHd;->mOkHttpResponseAndJSONArrayRequestListener:Lc8/UId;

    invoke-interface {v0, p1}, Lc8/UId;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0

    .line 687
    :cond_7
    iget-object v0, p0, Lc8/VHd;->mOkHttpResponseAndStringRequestListener:Lc8/XId;

    if-eqz v0, :cond_8

    .line 688
    iget-object v0, p0, Lc8/VHd;->mOkHttpResponseAndStringRequestListener:Lc8/XId;

    invoke-interface {v0, p1}, Lc8/XId;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0

    .line 689
    :cond_8
    iget-object v0, p0, Lc8/VHd;->mOkHttpResponseAndBitmapRequestListener:Lc8/TId;

    if-eqz v0, :cond_9

    .line 690
    iget-object v0, p0, Lc8/VHd;->mOkHttpResponseAndBitmapRequestListener:Lc8/TId;

    invoke-interface {v0, p1}, Lc8/TId;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0

    .line 691
    :cond_9
    iget-object v0, p0, Lc8/VHd;->mOkHttpResponseAndParsedRequestListener:Lc8/WId;

    if-eqz v0, :cond_a

    .line 692
    iget-object v0, p0, Lc8/VHd;->mOkHttpResponseAndParsedRequestListener:Lc8/WId;

    invoke-interface {v0, p1}, Lc8/WId;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0

    .line 693
    :cond_a
    iget-object v0, p0, Lc8/VHd;->mDownloadListener:Lc8/PId;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lc8/VHd;->mDownloadListener:Lc8/PId;

    invoke-interface {v0, p1}, Lc8/PId;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    goto :goto_0
.end method

.method private deliverSuccessResponse(Lc8/WHd;)V
    .locals 3
    .param p1, "response"    # Lc8/WHd;

    .prologue
    .line 648
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    iget-object v0, p0, Lc8/VHd;->mJSONObjectRequestListener:Lc8/SId;

    if-eqz v0, :cond_1

    .line 649
    iget-object v1, p0, Lc8/VHd;->mJSONObjectRequestListener:Lc8/SId;

    invoke-virtual {p1}, Lc8/WHd;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {v1, v0}, Lc8/SId;->onResponse(Lorg/json/JSONObject;)V

    .line 669
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lc8/VHd;->finish()V

    .line 670
    return-void

    .line 650
    :cond_1
    iget-object v0, p0, Lc8/VHd;->mJSONArrayRequestListener:Lc8/RId;

    if-eqz v0, :cond_2

    .line 651
    iget-object v1, p0, Lc8/VHd;->mJSONArrayRequestListener:Lc8/RId;

    invoke-virtual {p1}, Lc8/WHd;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-interface {v1, v0}, Lc8/RId;->onResponse(Lorg/json/JSONArray;)V

    goto :goto_0

    .line 652
    :cond_2
    iget-object v0, p0, Lc8/VHd;->mStringRequestListener:Lc8/bJd;

    if-eqz v0, :cond_3

    .line 653
    iget-object v1, p0, Lc8/VHd;->mStringRequestListener:Lc8/bJd;

    invoke-virtual {p1}, Lc8/WHd;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lc8/bJd;->onResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 654
    :cond_3
    iget-object v0, p0, Lc8/VHd;->mBitmapRequestListener:Lc8/NId;

    if-eqz v0, :cond_4

    .line 655
    iget-object v1, p0, Lc8/VHd;->mBitmapRequestListener:Lc8/NId;

    invoke-virtual {p1}, Lc8/WHd;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, v0}, Lc8/NId;->onResponse(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 656
    :cond_4
    iget-object v0, p0, Lc8/VHd;->mParsedRequestListener:Lc8/ZId;

    if-eqz v0, :cond_5

    .line 657
    iget-object v0, p0, Lc8/VHd;->mParsedRequestListener:Lc8/ZId;

    invoke-virtual {p1}, Lc8/WHd;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/ZId;->onResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 658
    :cond_5
    iget-object v0, p0, Lc8/VHd;->mOkHttpResponseAndJSONObjectRequestListener:Lc8/VId;

    if-eqz v0, :cond_6

    .line 659
    iget-object v1, p0, Lc8/VHd;->mOkHttpResponseAndJSONObjectRequestListener:Lc8/VId;

    invoke-virtual {p1}, Lc8/WHd;->getOkHttpResponse()Lc8/JId;

    move-result-object v2

    invoke-virtual {p1}, Lc8/WHd;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {v1, v2, v0}, Lc8/VId;->onResponse(Lc8/JId;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 660
    :cond_6
    iget-object v0, p0, Lc8/VHd;->mOkHttpResponseAndJSONArrayRequestListener:Lc8/UId;

    if-eqz v0, :cond_7

    .line 661
    iget-object v1, p0, Lc8/VHd;->mOkHttpResponseAndJSONArrayRequestListener:Lc8/UId;

    invoke-virtual {p1}, Lc8/WHd;->getOkHttpResponse()Lc8/JId;

    move-result-object v2

    invoke-virtual {p1}, Lc8/WHd;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-interface {v1, v2, v0}, Lc8/UId;->onResponse(Lc8/JId;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 662
    :cond_7
    iget-object v0, p0, Lc8/VHd;->mOkHttpResponseAndStringRequestListener:Lc8/XId;

    if-eqz v0, :cond_8

    .line 663
    iget-object v1, p0, Lc8/VHd;->mOkHttpResponseAndStringRequestListener:Lc8/XId;

    invoke-virtual {p1}, Lc8/WHd;->getOkHttpResponse()Lc8/JId;

    move-result-object v2

    invoke-virtual {p1}, Lc8/WHd;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lc8/XId;->onResponse(Lc8/JId;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 664
    :cond_8
    iget-object v0, p0, Lc8/VHd;->mOkHttpResponseAndBitmapRequestListener:Lc8/TId;

    if-eqz v0, :cond_9

    .line 665
    iget-object v1, p0, Lc8/VHd;->mOkHttpResponseAndBitmapRequestListener:Lc8/TId;

    invoke-virtual {p1}, Lc8/WHd;->getOkHttpResponse()Lc8/JId;

    move-result-object v2

    invoke-virtual {p1}, Lc8/WHd;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, v2, v0}, Lc8/TId;->onResponse(Lc8/JId;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 666
    :cond_9
    iget-object v0, p0, Lc8/VHd;->mOkHttpResponseAndParsedRequestListener:Lc8/WId;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lc8/VHd;->mOkHttpResponseAndParsedRequestListener:Lc8/WId;

    invoke-virtual {p1}, Lc8/WHd;->getOkHttpResponse()Lc8/JId;

    move-result-object v1

    invoke-virtual {p1}, Lc8/WHd;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/WId;->onResponse(Lc8/JId;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized deliverError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    .locals 3
    .param p1, "anError"    # Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    .prologue
    .line 600
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lc8/VHd;->isDelivered:Z

    if-nez v1, :cond_1

    .line 601
    iget-boolean v1, p0, Lc8/VHd;->isCancelled:Z

    if-eqz v1, :cond_0

    .line 602
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setCancellationMessageInError()V

    .line 603
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setErrorCode(I)V

    .line 605
    :cond_0
    invoke-direct {p0, p1}, Lc8/VHd;->deliverErrorResponse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Delivering anError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lc8/VHd;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/IHd;->d(Ljava/lang/String;)V

    .line 608
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/VHd;->isDelivered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    :goto_0
    monitor-exit p0

    return-void

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 600
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public deliverOkHttpResponse(Lc8/JId;)V
    .locals 4
    .param p1, "response"    # Lc8/JId;

    .prologue
    .line 700
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lc8/VHd;->isDelivered:Z

    .line 701
    iget-boolean v2, p0, Lc8/VHd;->isCancelled:Z

    if-nez v2, :cond_1

    .line 702
    iget-object v2, p0, Lc8/VHd;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v2, :cond_0

    .line 703
    iget-object v2, p0, Lc8/VHd;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lc8/OHd;

    invoke-direct {v3, p0, p1}, Lc8/OHd;-><init>(Lc8/VHd;Lc8/JId;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 722
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Delivering success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lc8/VHd;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/IHd;->d(Ljava/lang/String;)V

    .line 736
    :goto_1
    return-void

    .line 713
    :cond_0
    invoke-static {}, Lc8/eId;->getInstance()Lc8/eId;

    move-result-object v2

    invoke-virtual {v2}, Lc8/eId;->getExecutorSupplier()Lc8/gId;

    move-result-object v2

    invoke-interface {v2}, Lc8/gId;->forMainThreadTasks()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lc8/PHd;

    invoke-direct {v3, p0, p1}, Lc8/PHd;-><init>(Lc8/VHd;Lc8/JId;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 733
    :catch_0
    move-exception v1

    .line 734
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 724
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>()V

    .line 725
    .local v0, "anError":Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setCancellationMessageInError()V

    .line 726
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setErrorCode(I)V

    .line 727
    iget-object v2, p0, Lc8/VHd;->mOkHttpResponseListener:Lc8/YId;

    if-eqz v2, :cond_2

    .line 728
    iget-object v2, p0, Lc8/VHd;->mOkHttpResponseListener:Lc8/YId;

    invoke-interface {v2, v0}, Lc8/YId;->onError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    .line 730
    :cond_2
    invoke-virtual {p0}, Lc8/VHd;->finish()V

    .line 731
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Delivering cancelled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lc8/VHd;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/IHd;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public deliverResponse(Lc8/WHd;)V
    .locals 4
    .param p1, "response"    # Lc8/WHd;

    .prologue
    .line 617
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lc8/VHd;->isDelivered:Z

    .line 618
    iget-boolean v2, p0, Lc8/VHd;->isCancelled:Z

    if-nez v2, :cond_1

    .line 619
    iget-object v2, p0, Lc8/VHd;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v2, :cond_0

    .line 620
    iget-object v2, p0, Lc8/VHd;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lc8/MHd;

    invoke-direct {v3, p0, p1}, Lc8/MHd;-><init>(Lc8/VHd;Lc8/WHd;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 633
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Delivering success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lc8/VHd;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/IHd;->d(Ljava/lang/String;)V

    .line 645
    :goto_1
    return-void

    .line 627
    :cond_0
    invoke-static {}, Lc8/eId;->getInstance()Lc8/eId;

    move-result-object v2

    invoke-virtual {v2}, Lc8/eId;->getExecutorSupplier()Lc8/gId;

    move-result-object v2

    invoke-interface {v2}, Lc8/gId;->forMainThreadTasks()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lc8/NHd;

    invoke-direct {v3, p0, p1}, Lc8/NHd;-><init>(Lc8/VHd;Lc8/WHd;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 642
    :catch_0
    move-exception v1

    .line 643
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 635
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>()V

    .line 636
    .local v0, "anError":Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setCancellationMessageInError()V

    .line 637
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setErrorCode(I)V

    .line 638
    invoke-direct {p0, v0}, Lc8/VHd;->deliverErrorResponse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    .line 639
    invoke-virtual {p0}, Lc8/VHd;->finish()V

    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Delivering cancelled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lc8/VHd;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/IHd;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public destroy()V
    .locals 1

    .prologue
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    const/4 v0, 0x0

    .line 523
    iput-object v0, p0, Lc8/VHd;->mJSONArrayRequestListener:Lc8/RId;

    .line 524
    iput-object v0, p0, Lc8/VHd;->mJSONArrayRequestListener:Lc8/RId;

    .line 525
    iput-object v0, p0, Lc8/VHd;->mStringRequestListener:Lc8/bJd;

    .line 526
    iput-object v0, p0, Lc8/VHd;->mBitmapRequestListener:Lc8/NId;

    .line 527
    iput-object v0, p0, Lc8/VHd;->mParsedRequestListener:Lc8/ZId;

    .line 528
    iput-object v0, p0, Lc8/VHd;->mDownloadProgressListener:Lc8/QId;

    .line 529
    iput-object v0, p0, Lc8/VHd;->mUploadProgressListener:Lc8/cJd;

    .line 530
    iput-object v0, p0, Lc8/VHd;->mDownloadListener:Lc8/PId;

    .line 531
    iput-object v0, p0, Lc8/VHd;->mAnalyticsListener:Lc8/MId;

    .line 532
    return-void
.end method

.method public executeForBitmap()Lc8/WHd;
    .locals 1

    .prologue
    .line 310
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->BITMAP:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    iput-object v0, p0, Lc8/VHd;->mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    .line 311
    invoke-static {p0}, Lc8/rJd;->execute(Lc8/VHd;)Lc8/WHd;

    move-result-object v0

    return-object v0
.end method

.method public executeForDownload()Lc8/WHd;
    .locals 1

    .prologue
    .line 321
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    invoke-static {p0}, Lc8/rJd;->execute(Lc8/VHd;)Lc8/WHd;

    move-result-object v0

    return-object v0
.end method

.method public executeForString()Lc8/WHd;
    .locals 1

    .prologue
    .line 300
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->STRING:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    iput-object v0, p0, Lc8/VHd;->mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    .line 301
    invoke-static {p0}, Lc8/rJd;->execute(Lc8/VHd;)Lc8/WHd;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 535
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    invoke-virtual {p0}, Lc8/VHd;->destroy()V

    .line 536
    invoke-static {}, Lc8/kJd;->getInstance()Lc8/kJd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/kJd;->finish(Lc8/VHd;)V

    .line 537
    return-void
.end method

.method public getCall()Lc8/kId;
    .locals 1

    .prologue
    .line 507
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    iget-object v0, p0, Lc8/VHd;->call:Lc8/kId;

    return-object v0
.end method

.method public getDirPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    iget-object v0, p0, Lc8/VHd;->mDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    iget-object v0, p0, Lc8/VHd;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Lc8/qId;
    .locals 6

    .prologue
    .line 813
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    new-instance v0, Lc8/pId;

    invoke-direct {v0}, Lc8/pId;-><init>()V

    .line 815
    .local v0, "builder":Lc8/pId;
    :try_start_0
    iget-object v3, p0, Lc8/VHd;->mHeadersMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 816
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lc8/pId;->add(Ljava/lang/String;Ljava/lang/String;)Lc8/pId;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 818
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 819
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 821
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v0}, Lc8/pId;->build()Lc8/qId;

    move-result-object v3

    return-object v3
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 344
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    iget v0, p0, Lc8/VHd;->mMethod:I

    return v0
.end method

.method public getMultiPartRequestBody()Lc8/GId;
    .locals 11

    .prologue
    .line 785
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    new-instance v6, Lc8/yId;

    invoke-direct {v6}, Lc8/yId;-><init>()V

    sget-object v7, Lc8/AId;->FORM:Lc8/xId;

    invoke-virtual {v6, v7}, Lc8/yId;->setType(Lc8/xId;)Lc8/yId;

    move-result-object v0

    .line 787
    .local v0, "builder":Lc8/yId;
    :try_start_0
    iget-object v6, p0, Lc8/VHd;->mMultiPartParameterMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 788
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v9, "Content-Disposition"

    aput-object v9, v8, v6

    const/4 v9, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "form-data; name=\""

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 789
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, "\""

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    .line 788
    invoke-static {v8}, Lc8/qId;->of([Ljava/lang/String;)Lc8/qId;

    move-result-object v8

    const/4 v9, 0x0

    .line 790
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v9, v6}, Lc8/GId;->create(Lc8/xId;Ljava/lang/String;)Lc8/GId;

    move-result-object v6

    .line 788
    invoke-virtual {v0, v8, v6}, Lc8/yId;->addPart(Lc8/qId;Lc8/GId;)Lc8/yId;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 806
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 807
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 809
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v0}, Lc8/yId;->build()Lc8/AId;

    move-result-object v6

    return-object v6

    .line 792
    :cond_1
    :try_start_1
    iget-object v6, p0, Lc8/VHd;->mMultiPartFileMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 793
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 796
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 797
    .local v5, "fileName":Ljava/lang/String;
    invoke-static {v5}, Lc8/SJd;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc8/xId;->parse(Ljava/lang/String;)Lc8/xId;

    move-result-object v8

    .line 798
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 797
    invoke-static {v8, v6}, Lc8/GId;->create(Lc8/xId;Ljava/io/File;)Lc8/GId;

    move-result-object v4

    .line 799
    .local v4, "fileBody":Lc8/GId;
    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v9, "Content-Disposition"

    aput-object v9, v8, v6

    const/4 v9, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "form-data; name=\""

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 800
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, "\"; filename=\""

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, "\""

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    .line 799
    invoke-static {v8}, Lc8/qId;->of([Ljava/lang/String;)Lc8/qId;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Lc8/yId;->addPart(Lc8/qId;Lc8/GId;)Lc8/yId;

    .line 802
    iget-object v6, p0, Lc8/VHd;->customMediaType:Lc8/xId;

    if-eqz v6, :cond_2

    .line 803
    iget-object v6, p0, Lc8/VHd;->customMediaType:Lc8/xId;

    invoke-virtual {v0, v6}, Lc8/yId;->setType(Lc8/xId;)Lc8/yId;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getPriority()Lcom/meizu/cloud/pushsdk/networking/common/Priority;
    .locals 1

    .prologue
    .line 348
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    iget-object v0, p0, Lc8/VHd;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    return-object v0
.end method

.method public getRequestBody()Lc8/GId;
    .locals 6

    .prologue
    .line 739
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    iget-object v3, p0, Lc8/VHd;->mJsonObject:Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    .line 740
    iget-object v3, p0, Lc8/VHd;->customMediaType:Lc8/xId;

    if-eqz v3, :cond_0

    .line 741
    iget-object v3, p0, Lc8/VHd;->customMediaType:Lc8/xId;

    iget-object v4, p0, Lc8/VHd;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/GId;->create(Lc8/xId;Ljava/lang/String;)Lc8/GId;

    move-result-object v3

    .line 780
    :goto_0
    return-object v3

    .line 743
    :cond_0
    sget-object v3, Lc8/VHd;->JSON_MEDIA_TYPE:Lc8/xId;

    iget-object v4, p0, Lc8/VHd;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/GId;->create(Lc8/xId;Ljava/lang/String;)Lc8/GId;

    move-result-object v3

    goto :goto_0

    .line 744
    :cond_1
    iget-object v3, p0, Lc8/VHd;->mJsonArray:Lorg/json/JSONArray;

    if-eqz v3, :cond_3

    .line 745
    iget-object v3, p0, Lc8/VHd;->customMediaType:Lc8/xId;

    if-eqz v3, :cond_2

    .line 746
    iget-object v3, p0, Lc8/VHd;->customMediaType:Lc8/xId;

    iget-object v4, p0, Lc8/VHd;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/GId;->create(Lc8/xId;Ljava/lang/String;)Lc8/GId;

    move-result-object v3

    goto :goto_0

    .line 748
    :cond_2
    sget-object v3, Lc8/VHd;->JSON_MEDIA_TYPE:Lc8/xId;

    iget-object v4, p0, Lc8/VHd;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/GId;->create(Lc8/xId;Ljava/lang/String;)Lc8/GId;

    move-result-object v3

    goto :goto_0

    .line 749
    :cond_3
    iget-object v3, p0, Lc8/VHd;->mStringBody:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 750
    iget-object v3, p0, Lc8/VHd;->customMediaType:Lc8/xId;

    if-eqz v3, :cond_4

    .line 751
    iget-object v3, p0, Lc8/VHd;->customMediaType:Lc8/xId;

    iget-object v4, p0, Lc8/VHd;->mStringBody:Ljava/lang/String;

    invoke-static {v3, v4}, Lc8/GId;->create(Lc8/xId;Ljava/lang/String;)Lc8/GId;

    move-result-object v3

    goto :goto_0

    .line 753
    :cond_4
    sget-object v3, Lc8/VHd;->MEDIA_TYPE_MARKDOWN:Lc8/xId;

    iget-object v4, p0, Lc8/VHd;->mStringBody:Ljava/lang/String;

    invoke-static {v3, v4}, Lc8/GId;->create(Lc8/xId;Ljava/lang/String;)Lc8/GId;

    move-result-object v3

    goto :goto_0

    .line 754
    :cond_5
    iget-object v3, p0, Lc8/VHd;->mFile:Ljava/io/File;

    if-eqz v3, :cond_7

    .line 755
    iget-object v3, p0, Lc8/VHd;->customMediaType:Lc8/xId;

    if-eqz v3, :cond_6

    .line 756
    iget-object v3, p0, Lc8/VHd;->customMediaType:Lc8/xId;

    iget-object v4, p0, Lc8/VHd;->mFile:Ljava/io/File;

    invoke-static {v3, v4}, Lc8/GId;->create(Lc8/xId;Ljava/io/File;)Lc8/GId;

    move-result-object v3

    goto :goto_0

    .line 758
    :cond_6
    sget-object v3, Lc8/VHd;->MEDIA_TYPE_MARKDOWN:Lc8/xId;

    iget-object v4, p0, Lc8/VHd;->mFile:Ljava/io/File;

    invoke-static {v3, v4}, Lc8/GId;->create(Lc8/xId;Ljava/io/File;)Lc8/GId;

    move-result-object v3

    goto :goto_0

    .line 759
    :cond_7
    iget-object v3, p0, Lc8/VHd;->mByte:[B

    if-eqz v3, :cond_9

    .line 760
    iget-object v3, p0, Lc8/VHd;->customMediaType:Lc8/xId;

    if-eqz v3, :cond_8

    .line 761
    iget-object v3, p0, Lc8/VHd;->customMediaType:Lc8/xId;

    iget-object v4, p0, Lc8/VHd;->mByte:[B

    invoke-static {v3, v4}, Lc8/GId;->create(Lc8/xId;[B)Lc8/GId;

    move-result-object v3

    goto/16 :goto_0

    .line 763
    :cond_8
    sget-object v3, Lc8/VHd;->MEDIA_TYPE_MARKDOWN:Lc8/xId;

    iget-object v4, p0, Lc8/VHd;->mByte:[B

    invoke-static {v3, v4}, Lc8/GId;->create(Lc8/xId;[B)Lc8/GId;

    move-result-object v3

    goto/16 :goto_0

    .line 765
    :cond_9
    new-instance v0, Lc8/mId;

    invoke-direct {v0}, Lc8/mId;-><init>()V

    .line 767
    .local v0, "builder":Lc8/mId;
    :try_start_0
    iget-object v3, p0, Lc8/VHd;->mBodyParameterMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 768
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 769
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lc8/mId;->add(Ljava/lang/String;Ljava/lang/String;)Lc8/mId;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 777
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 778
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 780
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_b
    invoke-virtual {v0}, Lc8/mId;->build()Lc8/nId;

    move-result-object v3

    goto/16 :goto_0

    .line 772
    :cond_c
    :try_start_1
    iget-object v3, p0, Lc8/VHd;->mUrlEncodedFormBodyParameterMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 773
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 774
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lc8/mId;->addEncoded(Ljava/lang/String;Ljava/lang/String;)Lc8/mId;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    .line 388
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    iget v0, p0, Lc8/VHd;->mRequestType:I

    return v0
.end method

.method public getResponseAs()Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;
    .locals 1

    .prologue
    .line 380
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    iget-object v0, p0, Lc8/VHd;->mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .prologue
    .line 364
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    iget v0, p0, Lc8/VHd;->sequenceNumber:I

    return v0
.end method

.method public getUploadProgressListener()Lc8/cJd;
    .locals 1

    .prologue
    .line 456
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    new-instance v0, Lc8/LHd;

    invoke-direct {v0, p0}, Lc8/LHd;-><init>(Lc8/VHd;)V

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 6

    .prologue
    .line 352
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    iget-object v1, p0, Lc8/VHd;->mUrl:Ljava/lang/String;

    .line 353
    .local v1, "tempUrl":Ljava/lang/String;
    iget-object v3, p0, Lc8/VHd;->mPathParameterMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 354
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 355
    goto :goto_0

    .line 356
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {v1}, Lc8/wId;->parse(Ljava/lang/String;)Lc8/wId;

    move-result-object v3

    invoke-virtual {v3}, Lc8/wId;->newBuilder()Lc8/vId;

    move-result-object v2

    .line 357
    .local v2, "urlBuilder":Lc8/vId;
    iget-object v3, p0, Lc8/VHd;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 358
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lc8/vId;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/vId;

    goto :goto_1

    .line 360
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v2}, Lc8/vId;->build()Lc8/wId;

    move-result-object v3

    invoke-virtual {v3}, Lc8/wId;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    iget-object v0, p0, Lc8/VHd;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public parseNetworkError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    .locals 2
    .param p1, "anError"    # Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    .prologue
    .line 587
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getResponse()Lc8/JId;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getResponse()Lc8/JId;

    move-result-object v1

    invoke-virtual {v1}, Lc8/JId;->body()Lc8/KId;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 588
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getResponse()Lc8/JId;

    move-result-object v1

    invoke-virtual {v1}, Lc8/JId;->body()Lc8/KId;

    move-result-object v1

    invoke-virtual {v1}, Lc8/KId;->source()Lc8/AJd;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 590
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getResponse()Lc8/JId;

    move-result-object v1

    invoke-virtual {v1}, Lc8/JId;->body()Lc8/KId;

    move-result-object v1

    invoke-virtual {v1}, Lc8/KId;->source()Lc8/AJd;

    move-result-object v1

    .line 589
    invoke-static {v1}, Lc8/EJd;->buffer(Lc8/MJd;)Lc8/AJd;

    move-result-object v1

    .line 590
    invoke-interface {v1}, Lc8/AJd;->readUtf8()Ljava/lang/String;

    move-result-object v1

    .line 589
    invoke-virtual {p1, v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->setErrorBody(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :cond_0
    :goto_0
    return-object p1

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public parseResponse(Lc8/JId;)Lc8/WHd;
    .locals 7
    .param p1, "response"    # Lc8/JId;

    .prologue
    .line 540
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    sget-object v2, Lc8/QHd;->$SwitchMap$com$meizu$cloud$pushsdk$networking$common$ResponseType:[I

    iget-object v3, p0, Lc8/VHd;->mResponseType:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 582
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 543
    :pswitch_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lc8/JId;->body()Lc8/KId;

    move-result-object v2

    invoke-virtual {v2}, Lc8/KId;->source()Lc8/AJd;

    move-result-object v2

    invoke-static {v2}, Lc8/EJd;->buffer(Lc8/MJd;)Lc8/AJd;

    move-result-object v2

    invoke-interface {v2}, Lc8/AJd;->readUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 544
    .local v1, "json":Lorg/json/JSONArray;
    invoke-static {v1}, Lc8/WHd;->success(Ljava/lang/Object;)Lc8/WHd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 545
    .end local v1    # "json":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v2, v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lc8/SJd;->getErrorForParse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v2

    invoke-static {v2}, Lc8/WHd;->failed(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lc8/WHd;

    move-result-object v2

    goto :goto_0

    .line 550
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lc8/JId;->body()Lc8/KId;

    move-result-object v2

    .line 551
    invoke-virtual {v2}, Lc8/KId;->source()Lc8/AJd;

    move-result-object v2

    .line 550
    invoke-static {v2}, Lc8/EJd;->buffer(Lc8/MJd;)Lc8/AJd;

    move-result-object v2

    .line 551
    invoke-interface {v2}, Lc8/AJd;->readUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 552
    .local v1, "json":Lorg/json/JSONObject;
    invoke-static {v1}, Lc8/WHd;->success(Ljava/lang/Object;)Lc8/WHd;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 553
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 554
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v2, v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lc8/SJd;->getErrorForParse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v2

    invoke-static {v2}, Lc8/WHd;->failed(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lc8/WHd;

    move-result-object v2

    goto :goto_0

    .line 559
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    invoke-virtual {p1}, Lc8/JId;->body()Lc8/KId;

    move-result-object v2

    invoke-virtual {v2}, Lc8/KId;->source()Lc8/AJd;

    move-result-object v2

    .line 558
    invoke-static {v2}, Lc8/EJd;->buffer(Lc8/MJd;)Lc8/AJd;

    move-result-object v2

    .line 559
    invoke-interface {v2}, Lc8/AJd;->readUtf8()Ljava/lang/String;

    move-result-object v2

    .line 558
    invoke-static {v2}, Lc8/WHd;->success(Ljava/lang/Object;)Lc8/WHd;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    goto :goto_0

    .line 560
    :catch_2
    move-exception v0

    .line 561
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v2, v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lc8/SJd;->getErrorForParse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v2

    invoke-static {v2}, Lc8/WHd;->failed(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lc8/WHd;

    move-result-object v2

    goto :goto_0

    .line 564
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_3
    sget-object v3, Lc8/VHd;->sDecodeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 566
    :try_start_3
    iget v2, p0, Lc8/VHd;->mMaxWidth:I

    iget v4, p0, Lc8/VHd;->mMaxHeight:I

    iget-object v5, p0, Lc8/VHd;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    iget-object v6, p0, Lc8/VHd;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {p1, v2, v4, v5, v6}, Lc8/SJd;->decodeBitmap(Lc8/JId;IILandroid/graphics/Bitmap$Config;Landroid/widget/ImageView$ScaleType;)Lc8/WHd;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    :try_start_4
    monitor-exit v3

    goto/16 :goto_0

    .line 571
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 568
    :catch_3
    move-exception v0

    .line 569
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v2, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v2, v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lc8/SJd;->getErrorForParse(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v2

    invoke-static {v2}, Lc8/WHd;->failed(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)Lc8/WHd;

    move-result-object v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 580
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_4
    const-string/jumbo v2, "prefetch"

    invoke-static {v2}, Lc8/WHd;->success(Ljava/lang/Object;)Lc8/WHd;

    move-result-object v2

    goto/16 :goto_0

    .line 540
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setCall(Lc8/kId;)V
    .locals 0
    .param p1, "call"    # Lc8/kId;

    .prologue
    .line 511
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    iput-object p1, p0, Lc8/VHd;->call:Lc8/kId;

    .line 512
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 392
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    iput-object p1, p0, Lc8/VHd;->mUserAgent:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1466
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ANRequest{sequenceNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/VHd;->sequenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/VHd;->mMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/VHd;->mPriority:Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRequestType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/VHd;->mRequestType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/VHd;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDownloadCompletion()V
    .locals 2

    .prologue
    .line 419
    .local p0, "this":Lc8/VHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/VHd;->isDelivered:Z

    .line 420
    iget-object v0, p0, Lc8/VHd;->mDownloadListener:Lc8/PId;

    if-eqz v0, :cond_2

    .line 421
    iget-boolean v0, p0, Lc8/VHd;->isCancelled:Z

    if-nez v0, :cond_1

    .line 422
    iget-object v0, p0, Lc8/VHd;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lc8/VHd;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lc8/JHd;

    invoke-direct {v1, p0}, Lc8/JHd;-><init>(Lc8/VHd;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 453
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-static {}, Lc8/eId;->getInstance()Lc8/eId;

    move-result-object v0

    invoke-virtual {v0}, Lc8/eId;->getExecutorSupplier()Lc8/gId;

    move-result-object v0

    invoke-interface {v0}, Lc8/gId;->forMainThreadTasks()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lc8/KHd;

    invoke-direct {v1, p0}, Lc8/KHd;-><init>(Lc8/VHd;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 446
    :cond_1
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;-><init>()V

    invoke-virtual {p0, v0}, Lc8/VHd;->deliverError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    .line 447
    invoke-virtual {p0}, Lc8/VHd;->finish()V

    goto :goto_0

    .line 450
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Prefetch done : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc8/VHd;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/IHd;->d(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Lc8/VHd;->finish()V

    goto :goto_0
.end method
