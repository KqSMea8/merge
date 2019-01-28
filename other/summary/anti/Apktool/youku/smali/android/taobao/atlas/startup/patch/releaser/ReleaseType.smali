.class public final enum Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;
.super Ljava/lang/Enum;
.source "ReleaseType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;

.field public static final enum DEX:Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;

.field public static final enum RESOURCE:Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;

.field public static final enum SOLIB:Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 216
    new-instance v0, Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;

    const-string/jumbo v1, "DEX"

    invoke-direct {v0, v1, v2}, Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;->DEX:Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;

    new-instance v0, Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;

    const-string/jumbo v1, "SOLIB"

    invoke-direct {v0, v1, v3}, Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;->SOLIB:Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;

    new-instance v0, Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;

    const-string/jumbo v1, "RESOURCE"

    invoke-direct {v0, v1, v4}, Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;->RESOURCE:Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;

    .line 214
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;

    sget-object v1, Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;->DEX:Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;->SOLIB:Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;->RESOURCE:Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;->$VALUES:[Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;

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
    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 214
    const-class v0, Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;

    return-object v0
.end method

.method public static values()[Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;->$VALUES:[Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;

    invoke-virtual {v0}, [Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/atlas/startup/patch/releaser/ReleaseType;

    return-object v0
.end method
