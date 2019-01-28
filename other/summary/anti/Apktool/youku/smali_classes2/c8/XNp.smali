.class public Lc8/XNp;
.super Ljava/lang/Object;
.source "DeviceIDManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/YNp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lc8/YNp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lc8/YNp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/YNp;-><init>(Lc8/UNp;)V

    sput-object v0, Lc8/XNp;->INSTANCE:Lc8/YNp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lc8/YNp;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lc8/XNp;->INSTANCE:Lc8/YNp;

    return-object v0
.end method
