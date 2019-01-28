.class public Lc8/zWo;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/CWo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtmlParser"
.end annotation


# static fields
.field private static final schema:Lc8/oXo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lc8/oXo;

    invoke-direct {v0}, Lc8/oXo;-><init>()V

    sput-object v0, Lc8/zWo;->schema:Lc8/oXo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lc8/oXo;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lc8/zWo;->schema:Lc8/oXo;

    return-object v0
.end method
