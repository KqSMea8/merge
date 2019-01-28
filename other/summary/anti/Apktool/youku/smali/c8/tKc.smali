.class public final Lc8/tKc;
.super Ljava/lang/Object;


# static fields
.field private static a:Lc8/rKc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc8/sKc;

    invoke-direct {v0}, Lc8/sKc;-><init>()V

    sput-object v0, Lc8/tKc;->a:Lc8/rKc;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lc8/tKc;->a:Lc8/rKc;

    const-string/jumbo v1, "alimm_video_ad"

    invoke-interface {v0, v1, p0}, Lc8/rKc;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
