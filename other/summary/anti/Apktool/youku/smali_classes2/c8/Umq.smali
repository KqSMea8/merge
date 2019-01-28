.class public Lc8/Umq;
.super Ljava/lang/Object;
.source "RxAndroidSchedulersHook.java"


# static fields
.field private static final DEFAULT_INSTANCE:Lc8/Umq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lc8/Umq;

    invoke-direct {v0}, Lc8/Umq;-><init>()V

    sput-object v0, Lc8/Umq;->DEFAULT_INSTANCE:Lc8/Umq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultInstance()Lc8/Umq;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lc8/Umq;->DEFAULT_INSTANCE:Lc8/Umq;

    return-object v0
.end method


# virtual methods
.method public getMainThreadScheduler()Lc8/amq;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSchedule(Lc8/hnq;)Lc8/hnq;
    .locals 0
    .param p1, "action"    # Lc8/hnq;

    .prologue
    .line 45
    return-object p1
.end method
