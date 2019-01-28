.class public final enum Lyunos/media/codec/MediacodecWrap$CodecState;
.super Ljava/lang/Enum;
.source "MediacodecWrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/iCq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CodecState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lyunos/media/codec/MediacodecWrap$CodecState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lyunos/media/codec/MediacodecWrap$CodecState;

.field public static final enum Configured:Lyunos/media/codec/MediacodecWrap$CodecState;

.field public static final enum Released:Lyunos/media/codec/MediacodecWrap$CodecState;

.field public static final enum Started:Lyunos/media/codec/MediacodecWrap$CodecState;

.field public static final enum Stoped:Lyunos/media/codec/MediacodecWrap$CodecState;

.field public static final enum Uninitialized:Lyunos/media/codec/MediacodecWrap$CodecState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lyunos/media/codec/MediacodecWrap$CodecState;

    const-string/jumbo v1, "Uninitialized"

    invoke-direct {v0, v1, v2}, Lyunos/media/codec/MediacodecWrap$CodecState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyunos/media/codec/MediacodecWrap$CodecState;->Uninitialized:Lyunos/media/codec/MediacodecWrap$CodecState;

    .line 43
    new-instance v0, Lyunos/media/codec/MediacodecWrap$CodecState;

    const-string/jumbo v1, "Configured"

    invoke-direct {v0, v1, v3}, Lyunos/media/codec/MediacodecWrap$CodecState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyunos/media/codec/MediacodecWrap$CodecState;->Configured:Lyunos/media/codec/MediacodecWrap$CodecState;

    .line 44
    new-instance v0, Lyunos/media/codec/MediacodecWrap$CodecState;

    const-string/jumbo v1, "Started"

    invoke-direct {v0, v1, v4}, Lyunos/media/codec/MediacodecWrap$CodecState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyunos/media/codec/MediacodecWrap$CodecState;->Started:Lyunos/media/codec/MediacodecWrap$CodecState;

    .line 45
    new-instance v0, Lyunos/media/codec/MediacodecWrap$CodecState;

    const-string/jumbo v1, "Stoped"

    invoke-direct {v0, v1, v5}, Lyunos/media/codec/MediacodecWrap$CodecState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyunos/media/codec/MediacodecWrap$CodecState;->Stoped:Lyunos/media/codec/MediacodecWrap$CodecState;

    .line 46
    new-instance v0, Lyunos/media/codec/MediacodecWrap$CodecState;

    const-string/jumbo v1, "Released"

    invoke-direct {v0, v1, v6}, Lyunos/media/codec/MediacodecWrap$CodecState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyunos/media/codec/MediacodecWrap$CodecState;->Released:Lyunos/media/codec/MediacodecWrap$CodecState;

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [Lyunos/media/codec/MediacodecWrap$CodecState;

    sget-object v1, Lyunos/media/codec/MediacodecWrap$CodecState;->Uninitialized:Lyunos/media/codec/MediacodecWrap$CodecState;

    aput-object v1, v0, v2

    sget-object v1, Lyunos/media/codec/MediacodecWrap$CodecState;->Configured:Lyunos/media/codec/MediacodecWrap$CodecState;

    aput-object v1, v0, v3

    sget-object v1, Lyunos/media/codec/MediacodecWrap$CodecState;->Started:Lyunos/media/codec/MediacodecWrap$CodecState;

    aput-object v1, v0, v4

    sget-object v1, Lyunos/media/codec/MediacodecWrap$CodecState;->Stoped:Lyunos/media/codec/MediacodecWrap$CodecState;

    aput-object v1, v0, v5

    sget-object v1, Lyunos/media/codec/MediacodecWrap$CodecState;->Released:Lyunos/media/codec/MediacodecWrap$CodecState;

    aput-object v1, v0, v6

    sput-object v0, Lyunos/media/codec/MediacodecWrap$CodecState;->$VALUES:[Lyunos/media/codec/MediacodecWrap$CodecState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyunos/media/codec/MediacodecWrap$CodecState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lyunos/media/codec/MediacodecWrap$CodecState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lyunos/media/codec/MediacodecWrap$CodecState;

    return-object v0
.end method

.method public static values()[Lyunos/media/codec/MediacodecWrap$CodecState;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lyunos/media/codec/MediacodecWrap$CodecState;->$VALUES:[Lyunos/media/codec/MediacodecWrap$CodecState;

    invoke-virtual {v0}, [Lyunos/media/codec/MediacodecWrap$CodecState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyunos/media/codec/MediacodecWrap$CodecState;

    return-object v0
.end method
