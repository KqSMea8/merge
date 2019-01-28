.class public Lc8/Sen;
.super Ljava/lang/Object;
.source "LegalInfo.java"


# static fields
.field public static final LEGAL_ID:I = 0x1adb1

.field public static final SCENE_CODE_KEY:Ljava/lang/String; = "sceneCode"

.field public static final SCENE_CODE_VALUE:Ljava/lang/String; = "bufferSpeed"


# instance fields
.field public legalDate:Ljava/lang/String;

.field public legalId:I

.field public openVipJumpType:Ljava/lang/String;

.field public openVipJumpValue:Ljava/lang/String;

.field public remainAccTime:I

.field public totalAccTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lc8/Sen;->remainAccTime:I

    .line 14
    iput v0, p0, Lc8/Sen;->totalAccTime:I

    .line 19
    const v0, 0x1adb1

    iput v0, p0, Lc8/Sen;->legalId:I

    return-void
.end method
