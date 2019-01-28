.class public Lc8/Vck;
.super Ljava/lang/Object;
.source "DetailAdConstants.java"


# static fields
.field public static advertMiddleStr:Ljava/lang/String;

.field public static advertPauseStr:Ljava/lang/String;

.field public static advertPreStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string/jumbo v0, ""

    sput-object v0, Lc8/Vck;->advertPreStr:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, ""

    sput-object v0, Lc8/Vck;->advertMiddleStr:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, ""

    sput-object v0, Lc8/Vck;->advertPauseStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
