.class public Lc8/lSb;
.super Ljava/lang/Object;
.source "AdapterConstants.java"


# static fields
.field public static final EVENTID_61005:Ljava/lang/Integer;

.field public static final LOGTAG:Ljava/lang/String; = "MotuCrashAdapter"

.field public static final SEND_FLAG:Ljava/lang/String; = "MOTU_REPORTER_SDK_3.0.0_PRIVATE_COMPRESS"

.field public static final exceptionArg1:Ljava/lang/String; = "exceptionArg1"

.field public static final exceptionArg2:Ljava/lang/String; = "exceptionArg2"

.field public static final exceptionArg3:Ljava/lang/String; = "exceptionArg3"

.field public static final exceptionCode:Ljava/lang/String; = "exceptionCode"

.field public static final exceptionId:Ljava/lang/String; = "exceptionId"

.field public static final exceptionVersion:Ljava/lang/String; = "exceptionVersion"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const v0, 0xee4d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lc8/lSb;->EVENTID_61005:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
