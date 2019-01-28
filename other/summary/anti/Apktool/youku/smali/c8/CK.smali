.class public interface abstract annotation Lc8/CK;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lc8/CK;
        sampleRate = 0x2710
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract module()Ljava/lang/String;
.end method

.method public abstract monitorPoint()Ljava/lang/String;
.end method

.method public abstract sampleRate()I
.end method
