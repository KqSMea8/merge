.class public Lc8/Pnf;
.super Ljava/lang/Object;
.source "PushConfigCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Rnf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PushConfigCenterHolder"
.end annotation


# static fields
.field public static instance:Lc8/Rnf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lc8/Rnf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/Rnf;-><init>(Lc8/Nnf;)V

    sput-object v0, Lc8/Pnf;->instance:Lc8/Rnf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
