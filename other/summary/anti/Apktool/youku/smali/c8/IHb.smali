.class public Lc8/IHb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/JHb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Lc8/JHb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc8/JHb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/JHb;-><init>(Lc8/HHb;)V

    sput-object v0, Lc8/IHb;->a:Lc8/JHb;

    return-void
.end method

.method static synthetic a()Lc8/JHb;
    .locals 1

    sget-object v0, Lc8/IHb;->a:Lc8/JHb;

    return-object v0
.end method
