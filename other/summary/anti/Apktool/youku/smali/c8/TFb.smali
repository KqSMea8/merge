.class public Lc8/TFb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UFb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lc8/UFb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc8/UFb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/UFb;-><init>(Lc8/XFb;)V

    sput-object v0, Lc8/TFb;->a:Lc8/UFb;

    return-void
.end method
