.class public interface abstract Lc8/phq;
.super Ljava/lang/Object;
.source "RestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/thq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Log"
.end annotation


# static fields
.field public static final NONE:Lc8/phq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lc8/ohq;

    invoke-direct {v0}, Lc8/ohq;-><init>()V

    sput-object v0, Lc8/phq;->NONE:Lc8/phq;

    return-void
.end method


# virtual methods
.method public abstract log(Ljava/lang/String;)V
.end method
