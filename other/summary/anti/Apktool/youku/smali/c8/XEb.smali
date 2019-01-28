.class public Lc8/XEb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ZEb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lc8/ZEb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc8/ZEb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/ZEb;-><init>(Lc8/WEb;)V

    sput-object v0, Lc8/XEb;->a:Lc8/ZEb;

    return-void
.end method
