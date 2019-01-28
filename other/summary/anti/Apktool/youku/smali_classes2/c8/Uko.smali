.class public Lc8/Uko;
.super Lc8/Oko;
.source "UserTags.java"


# static fields
.field public static final ID_TYPE_UTDID:Ljava/lang/String; = "utdid"

.field public static final ID_TYPE_YTID:Ljava/lang/String; = "ytid"


# instance fields
.field public mReqId:Ljava/lang/String;

.field public mResultKey:Ljava/lang/String;

.field public mTagValues:Lorg/json/JSONObject;

.field public mTags:Lorg/json/JSONObject;

.field public mUserId:Ljava/lang/String;

.field public mUserIdType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lc8/Oko;-><init>()V

    .line 39
    return-void
.end method
